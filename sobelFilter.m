clc;
clear all;
close all;
% performing sobel operation over a gray scale image
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
sobel_kernelx = [-1 0 1; -2 0 2; -1 0 1];
sobel_kernely = [1 2 1; 0 0 0; -1 -2 -1];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        convx = temp.*sobel_kernelx;
        outputx(i,j) = sum(convx(:));
        convy = temp.*sobel_kernely;
        outputy(i,j) = sum(convy(:));
        output(i,j) = outputx(i,j)+outputy(i,j);
    end
end
output = uint8(output);
imshow(output)

