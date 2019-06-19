clc; clear; close all;
Original = imread('road.jpg');
Original = rgb2gray(Original);
I = double(Original)/255;
[M,N] = size(I);
subplot(321);imshow(I);
title('Original');
for i=1:M
    for j=1:N
        I(i,j) = I(i,j)*(-1)^(i+j); 
    end
end

I_fft = fft2(I);
subplot(322);imshow(I_fft);
title('Centered frequency components');

%% Low pass filter

cutoff_frequency = 30;
H_lowpass = zeros(M,N);

for i=1:M
    for j=1:N
        if norm([M/2 N/2]-[i j]) < cutoff_frequency
            H_lowpass(i,j)=1;
        end
    end
end

I_lowpass_F = I_fft.*H_lowpass;
subplot(324);imshow(I_lowpass_F);
title('Low frequency ');
LowPassed_image = ifft2(I_lowpass_F);
for i=1:M
    for j=1:N
        LowPassed_image(i,j) = LowPassed_image(i,j)*(-1)^(i+j); 
    end
end
subplot(323);imshow(LowPassed_image);
title('Lowpass Enhanced');


%% High pass filter

cutoff_frequency = 20;
H_highpass = zeros(M,N);

for i=1:M
    for j=1:N
        if norm([M/2 N/2]-[i j]) > cutoff_frequency
            H_highpass(i,j)=1;
        end
    end
end

I_highpass_F = I_fft.*H_highpass;
subplot(326);imshow(I_highpass_F);
title('High frequency ');
HighPassed_image = ifft2(I_highpass_F);
for i=1:M
    for j=1:N
        HighPassed_image(i,j) = HighPassed_image(i,j)*(-1)^(i+j); 
    end
end
subplot(325);imshow(HighPassed_image);
title('Highpass Enhanced');
