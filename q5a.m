!Write a program for resizing the image using inbuilt commands and without
!using inbuilt commands.

boys = imread('boys.tif')

resized_image = imresize(boys, [100,200])
size(resized_image)
figure , imshow(resized_image)