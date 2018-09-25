clc
clear
inputsize=10;
novar=5;
bitsize=10;
pc=.8;
crossoverpt=8;
mutationbit=3;
pm=.05;
objtype=1;
upp_hidden=30;
low_hidden=80;
upp_param = 1;
low_param = 0;
acc_hidden=(upp_hidden-low_hidden)/(2^bitsize);
acc_param=(upp_param-low_param)/(2^bitsize);

h = [75;75;70;60;55;55;45;50;30;35];
a = [0.8;0.8;0.8;0.8;0.8;0.6;0.6;0.5;0.5;0.4];
t = [0.4;0.4;0.4;0.4;0.4;0.3;0.3;0.3;0.3;0.3];
e = [1;0.5;0.5;0.5;0.5;0.3;0.3;0.5;0.4;0.6];
acc = [46.6;90.47;38.09;52.38;19.04;94.28;90.47;33.33;76.19;90.47];

for i=1:inputsize
    pop(i,1)=h(i,:);
    pop(i,2)=a(i,:);
    pop(i,3)=t(i,:);
    pop(i,4)=e(i,:);
end
pop
[r,c]=size(pop);
% for i=1:r
%     for j=1:c
%         dec(i,j)=bin2dec(num2str(pop(i,j)));
%     end
% end
% dec
% for i=1:r
%     for j=1:c
%         dec1(i,j)=(low+(upp-low)/((2^bitsize)-1))*dec(i,j);
%     end
% end
% dec1
rand1 = rand(100,4);

for itr = 1:100


for i=1:r
        accuracy=bpn_ga(pop(i,1),pop(i,2),pop(i,3),pop(i,4));
        f(i)=accuracy;
end

if(objtype==1)
    F=f;
else
    F=(1./f);
end

sumF=sum(F);
Pi=F./sumF;
CP=cumsum(Pi)


parent(1)=find(CP>=rand1(1,1), 1, 'first')
parent(2)=find(CP>=rand1(1,2),1,'first')
disp('wining values');
pop(parent(1),:)


if(rand1(1,3)<=pc)
     disp('Perform Crossover');
     pop3(1) =  mod((pop(parent(1),1)+pop(parent(2),1)),100);
         for i = 1 : 3
             pop3(i+1) = pop(parent(1),i+1) + pop(parent(2),i+1);
             if(pop3(i+1)>1)
                 pop3(i+1)=pop3(i+1)-1;
             end
         end
end

if(rand(1,4)<=pm)
     disp('Perform mutation')
     pop3(1) =  mod((pop3(1)+1),100) 
         for i = 1 : 3
             pop3(i+1) = pop(i+1) + 0.1;
             if(pop3(i+1)>1)
                 pop3(i+1)=pop3(i+1)-1;
             end
         end
end

Pi
[val index] = min(Pi);

for i= 1:4
    pop(index,i) = pop3(i);
end
     
end


