function [accuracy]=bpn_ga(hidden,alpha,tolerance,eta)


voices = {'ok1' 'ok2' 'ok3' 'ok4' 'ok5' 'ok6' 'ok7';'apple1' 'apple2' 'apple3' 'apple4' 'apple5' 'apple6' 'apple7';'madurai1' 'madurai2' 'madurai3' 'madurai4' 'madurai5' 'madurai6' 'madurai7';'google1' 'google2' 'google3' 'google4' 'google5' 'google6' 'google7'; 'cup1' 'cup2' 'cup3' 'cup4' 'cup5' 'cup6' 'cup7'; 'nokia1' 'nokia2' 'nokia3' 'nokia4' 'nokia5' 'nokia6' 'nokia7'; 'g1' 'g2' 'g3' 'g4' 'g5' 'g6' 'g7'};


Input = zeros(49,26);
k=1;

for i= 1 : size(voices,1)
    for j = 1 : size(voices,2)
        [d,sampling_rate] = wavread(char(voices(i,j)));
        [ceps] = mfcc(d,sampling_rate,1.5);
        inp = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];
        input(k,:) = inp(1,:);
        k=k+1;
    end
end

Output = [0.1;0.1;0.1;0.1;0.1;0.1;0.1;0.25;0.25;0.25;0.25;0.25;0.25;0.25;0.40;0.40;0.40;0.40;0.40;0.40;0.40;0.55;0.55;0.55;0.55;0.55;0.55;0.55;0.70;0.70;0.70;0.70;0.70;0.70;0.70;0.85;0.85;0.85;0.85;0.85;0.85;0.85;1;1;1;1;1;1;1];                  %output patterns - binary classification(0/1) 



j=1;

final_V = 0;                                    %last updated weights b/w input and hidden layer
final_W = 0;                                    %last updated weights b/w hidden and output layer

%learning rate from 0.5 to 1.0

    error_sum(1)=0;        
%     V = randn(26,30);   %weights between input and hidden layer
%     W = randn(30,1);    %weights between hidden and output layer
     %error tolerance value
    [r,c] = size(Input);    % size of the input (rows,columns)
    i=1;                %iteration number
    weightUpdated = 0;  %checking flag whether the weight is updated or not? 
    delw = 0;           %error rate with respect to weights from hidden and output layer
    delv = 0;           %error rate with respect to weights from input and hidden layer
     V = randn(26,hidden);   %weights between input and hidden layer
        W = randn(hidden,1);
    %send each input pattern for training
    while(i<r)
        OI = Input(i,:)';                       %OI - output of the input layer
        IH = V'* OI;                        %IH - input of the hidden layer -> weights b/w i/p & hidden layer * o/p of i/p layer 
        [rih, cih] = size(IH);
        for k = 1: rih
            OH(k,:) = 1/(1+exp(-IH(k)));    %apply sigmoidal function for calculating o/p of hidden layer
        end
        IO = W'*OH;                         %IH - input of the hidden layer -> weights b/w o/p & hidden layer * o/p of hidden layer
        [rio,sio] = size(IO);
        for k = 1:rio
            OO(k,:) = 1/(1+exp(-IO(k)));    %apply sigmoidal function for calculating o/p of output layer (OO)
        end
        Ep = (Output(i) - OO)^2;                  %error rate b/w o/p of o/p layer and target values

        %if error rate is greater than tolerance then update the weights 
        if(Ep>tolerance)                    
            weightUpdated = 1;
            d = (Output(i)- OO)*OO*(1-OO);
            Y = OH *d;
            delw = alpha*delw + eta*Y;
            e = W*d;
            [roh,coh] = size(OH);
            for k = 1:roh
                dstar(k) = e(k) * OH(k)*(1-OH(k));
            end
            X = OI *dstar;
            delv = alpha*delv + eta * X;
            V = delv + V;
            W = delw + W;
        end
        %if error rate is less than tolerance then go back to initial
        %neuron and check for error rate
        %neuron
        if(Ep < tolerance && weightUpdated == 1)
            error_sum(i) = Ep;
            i = 1;
            weightUpdated = 0;
            continue;
        end
        if weightUpdated == 0
            i = i+1;
        end
    end
    %no_of_hidden = no_of_hidden + 5;
    %final error rate for each learning rate parameter
    err(j) = (sum(error_sum))/10;
    final_V = V;
    final_W = W;
  


%testing
test_voices = {'ok8' 'ok9' 'ok10';'apple8' 'apple9' 'apple10';'madurai8' 'madurai9' 'madurai10';'google8' 'google9' 'google10';'cup8' 'cup9' 'cup10';'nokia8' 'nokia9' 'nokia10';'g8' 'g9' 'g10'};

for i= 1 : size(test_voices,1)
    for j = 1 : size(test_voices,2)
        [d,sampling_rate] = wavread(char(test_voices(i,j)));
        [ceps] = mfcc(d,sampling_rate,1.5);
        inp = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];
        test_I(k,:) = inp(1,:);
        k=k+1;
    end
end



[s,r] = size(test_I)
m=1;
accuracy=0;
%
while(m<=s)
    tOI = test_I(m,:)';                 %tOI - test output of input layer
    tIH = final_V'* tOI;                %tIH - test input of hidden layer 
    [rih, cih] = size(tIH);             
    for k = 1: rih;
        tOH(k,:) = 1/(1+exp(-tIH(k)));  %tOH - test output of hidden layer (sigmoidal function)
    end
    tIO = final_W'*tOH;                 %tIO - test input of output layer
    [rio,sio] = size(tIO);
    for k = 1:sio
        tOO(k,:) = 1/(1+exp(-tIO(k)));       %tOO - test output of output layer
    end
   % fprintf('\n %d value is %d \n',m,tOO);
    if(m<=1&&m<=3)
        if(tOO> 0 && tOO <= Output(1,1))
            accuracy=accuracy+1;
        end
    end
    if(m<=4&&m<=6)
        if(tOO> Output(1,1) && tOO <= Output(8,1))
            accuracy=accuracy+1;
        end
    end
    if(m<=7&&m<=9)
        if(tOO> Output(8,1) && tOO <= Output(15,1))
            accuracy=accuracy+1;
        end
    end
    if(m<=10&&m<=12)
        if(tOO>Output(15,1) && tOO <= Output(22,1))
            accuracy=accuracy+1;
        end
    end
    if(m<=13&&m<=15)
        if(tOO>Output(22,1) && tOO <= Output(30,1))
            accuracy=accuracy+1;
        end
    end
    if(m<=16&&m<=18)
        if(tOO>Output(30,1)&& tOO <= Output(36,1))
            accuracy=accuracy+1;
        end
    end
    if(m<=19&&m<=21)
        if(tOO>Output(36,1) && tOO <= Output(49,1))
            accuracy=accuracy+1;
        end
    end
    m=m+1;
end

accuracy = (accuracy/21) * 100