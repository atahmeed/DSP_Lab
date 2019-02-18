clc; clear; close all;
h = [ 1 2 1 -1 ]; ho = 2;
x = [ 1 2 3 1 ];  xo = 1;

[out,outOrigin] = convolution(x,h,xo,ho);
