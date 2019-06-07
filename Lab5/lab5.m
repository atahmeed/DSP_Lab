clc; clear; close all;

%generating input signal
origin=1;
x = [1 1 1 1 1 -1 -1 1 1 -1 1 -1 1];
x = [x x x x x x x x x x x x x x x 1 1 1 1 1];
Xn = 0:199;

% Definitions
a = 0.85;
D=round(random('Uniform',10,20));
v = random('Normal' , 0, 0.1, [1 200]);

% generating output signal
[x,xn] =shift(x,Xn,D); 
y = a*x + v;
yn = xn;

% cross correlate x,y
[rxy,lag] = ccor(x,Xn,y,yn);

% Find index of peak
[M, midx] = max(rxy);
lag(midx)

% plot the correlated signal
stem(lag,rxy,'k*');