close all; clc; clear;
original = imread('building.jpg');
gray = rgb2gray(original);
I = im2double(gray);

for i = 1:size(I,1)
    for j=1:size(I,2)
        I(i,j) = I(i,j)*(-1)^(i+j); 
    end
end

I_fft = fft2(I);
imshow(I_fft);