clc; clear; close all;
origin = 6;
sample = [-1,0,1,2,3,4,4,4,4,4];            % Input digital sequence
k=3;                                        % Number of samples to delay  
sampleDelayed = delay(sample,origin,k);     % Calling delay function
sampleAdvanced = advance(sample,origin,k);  % Calling Advance function
subplot(3,1,1); stem([-5:4],sample);        % Plotting original sequence
ylim([0,10]); title('Original Sequence');

subplot(3,1,2); stem([-5:4],sampleDelayed); % Plotting delayed sequence
ylim([0,10]); title('Delayed Sequence');

subplot(3,1,3); stem([-5:4],sampleAdvanced);% Plotting advanced sequence
ylim([0,10]); title('Advanced Sequence');