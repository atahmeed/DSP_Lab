clc; clear; close all;
origin = 6;


sample = [-1,0,1,2,3,4,4,4,4,4];
k=3;
n = [-1*origin+1:1:size(sample,2)-origin];
sampleDelayed = delay(sample,origin,k);
sampleAdvanced = advance(sample,origin,k);
subplot(3,1,1); stem(sample);
subplot(3,1,2); stem(sampleDelayed);
subplot(3,1,3); stem(sampleAdvanced);