clc; clear; close all;
origin=1;
x = [ 1, 2, 1, -1 ];  n = -origin : size(x,2)-origin-1; % 0 1 2 3
horigin=0;
h = [1, 2,3,1]; hn = -horigin : size(x,2)-horigin-1;

[c,cidx] = convolute(x,n,h,hn);

subplot(211); stem(n,x);
subplot(212); stem(cidx,c);