clc; clear; close all;
x = -10:10;
x=x';
sample = zeros(size(x,1),1);
step = zeros(size(x,1),1);
ramp = zeros(size(x,1),1);
a= [0.5,2.0,-0.5,-2.0];
ex = zeros(4,size(x,1));


for i = 1:size(x,1)
    if x(i)>=0
        step(i)=1;
        ramp(i) = x(i);
        for j=1:4
            ex(j,i) = a(j)^x(i);
        end
        if x(i)==0
            sample(i)=1;
        end
    end
end
figure;
subplot(1,3,1);
stem(sample);
subplot(1,3,2);
stem(step);
subplot(1,3,3);
stem(ramp);

figure;
for f =1:4
    subplot(2,2,f);
    stem(ex(f,:));
end