!Write a program to find the histogram value and display the histogram of a
!grayscale and color image.

boys= imread('boys.tif')

boys_histeq = histeq(boys)
imshow(boys_histeq)