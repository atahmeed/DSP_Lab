clc; clear; close all;
origin = 6;
sample = [-1,0,1,2,3,4,4,4,4,4];            
k=3;                                          
sampleDelayed = delay(sample,origin,k);     
sampleAdvanced = advance(sample,origin,k);  
subplot(3,1,1); stem([-5:4],sample);        
ylim([0,10]); title('Original Sequence');

subplot(3,1,2); stem([-5:4],sampleDelayed); 
ylim([0,10]); title('Delayed Sequence');

subplot(3,1,3); stem([-5:4],sampleAdvanced);
ylim([0,10]); title('Advanced Sequence');