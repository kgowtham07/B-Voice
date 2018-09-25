function fuzzy_c_means()

[d,sr] = wavread('ok1.wav');
[ceps] = mfcc(d,sr);
ok1 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('ok2.wav');
[ceps] = mfcc(d,sr);
ok2 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('ok3.wav');
[ceps] = mfcc(d,sr);
ok3 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('ok3.wav');
[ceps] = mfcc(d,sr);
ok3 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('ok4.wav');
[ceps] = mfcc(d,sr);
ok4 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('ok5.wav');
[ceps] = mfcc(d,sr);
ok5 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('ok6.wav');
[ceps] = mfcc(d,sr);
ok6 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('ok7.wav');
[ceps] = mfcc(d,sr);
ok7 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('ok8.wav');
[ceps] = mfcc(d,sr);
ok8 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('ok9.wav');
[ceps] = mfcc(d,sr);
ok9 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('ok10.wav');
[ceps] = mfcc(d,sr);
ok10 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('madurai1.wav');
[ceps] = mfcc(d,sr);
madurai1 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];


[d,sr] = wavread('madurai2.wav');
[ceps] = mfcc(d,sr);
madurai2 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('madurai3.wav');
[ceps] = mfcc(d,sr);
madurai3 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('madurai4.wav');
[ceps] = mfcc(d,sr);
madurai4 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('madurai5.wav');
[ceps] = mfcc(d,sr);
madurai5 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('madurai6.wav');
[ceps] = mfcc(d,sr);
madurai6 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('madurai7.wav');
[ceps] = mfcc(d,sr);
madurai7 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('madurai8.wav');
[ceps] = mfcc(d,sr);
madurai8 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('madurai9.wav');
[ceps] = mfcc(d,sr);
madurai9 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('madurai10.wav');
[ceps] = mfcc(d,sr);
madurai10 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('g1.wav');
[ceps] = mfcc(d,sr);
g1 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('g2.wav');
[ceps] = mfcc(d,sr);
g2 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('g3.wav');
[ceps] = mfcc(d,sr);
g3 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('g4.wav');
[ceps] = mfcc(d,sr);
g4 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('g5.wav');
[ceps] = mfcc(d,sr);
g5 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('g6.wav');
[ceps] = mfcc(d,sr);
g6 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('g7.wav');
[ceps] = mfcc(d,sr);
g7 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('g8.wav');
[ceps] = mfcc(d,sr);
g8 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('g9.wav');
[ceps] = mfcc(d,sr);
g9 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

[d,sr] = wavread('g10.wav');
[ceps] = mfcc(d,sr);
g10 = [ceps(1,:) ceps(2,:) ceps(3,:) ceps(4,:) ceps(5,:) ceps(6,:) ceps(7,:) ceps(8,:) ceps(9,:) ceps(10,:) ceps(11,:) ceps(12,:) ceps(13,:)];

%input = [0.4 -0.7;0.3 -0.5;0.6 0.1;0.2 0.4;0.1 -0.2];
%output = [0.1;0.05;0.3;0.25;0.12];

input = [ok1;ok2;ok3;ok4;ok5;ok6;ok7;ok8;ok9;ok10;g1;g2;g3;g4;g5;g6;g7;g8;g9;g10;madurai1;madurai2;madurai3;madurai4;madurai5;madurai6;madurai7;madurai8;madurai9;madurai10];

%[u s v]=svd(input'*input);
%u(:,1:3);
%save('u.mat','u');
%plot(u(:,1),u(:,2),u(:,3));
[center,U,obj_fcn] = fcm(input, 4);


for i=1:30
   
    [val index]  = max(U(:,i));
    
    fprintf('\n %d belongs to %d cluster ! ! ! ',i,index);
    
end

end