clc; clear; close all;
origin=1;
x = [ 1, 2, 1, -1 ];  n = -origin : size(x,2)-origin-1; % 0 1 2 3
horigin=0;
h = [1, 2,3,1]; hn = -horigin : size(x,2)-horigin-1;

[c,cidx] = convolute(x,n,h,hn);


%% Correlation using convolution
xor = 2;
hor = 2;
X = [1,2,3,-4];  Xn = -xor : size(X,2)-xor-1; 
Y = [1,3,-4,5]; Yn = -hor : size(Y,2)-hor-1;
[Y,Yn] = fold(Y,Yn);
[corr, corridx] = convolute(X,Xn, Y, Yn);

stem(corridx,corr);