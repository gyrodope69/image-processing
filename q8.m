!Write a program to show the non-linear filtering technique using edge detection.
BW1 = imread('boys.tif');
lutfun = @(x)(sum(x(:))==4);
lut = makelut(lutfun,2)
BW2 = bwlookup(BW1,lut);
figure; 
h1 = subplot(1,2,1); imshow(BW1), axis off; title('Original Image')
h2 = subplot(1,2,2); imshow(BW2); axis off; title('Eroded Image')
% 16X zoom to see effects of erosion on text
set(h1,'Ylim',[1 64],'Xlim',[1 64]);
set(h2,'Ylim',[1 64],'Xlim',[1 64]);