!Write a program to remove Salt and Pepper noise using median filter.
%MATLAB Code for removal of Salt and
% Pepper noise from image.
k=imread('boys.tif');
RemoveSaltAndPepperNoise(k);

function RemoveSaltAndPepperNoise(k)
% Convert to grayscale if not.
[M,N,D]=size(k);
if(D==3)
	k=rgb2gray(k);
end

% Add noise to image.
kn=imnoise(k,'salt & pepper',0.03);

% Display original and noisy image.
imtool(k,[]);
imtool(kn,[]);

% Denoising.
dn=medfilt2(kn,[5,5]);

% Display denoised image.
imtool(dn,[]);

% Pause and close img windows.
pause(10);
imtool close all;
end
