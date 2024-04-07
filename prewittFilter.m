clc;
clear all;
close all;
% performing robert prewitt operation over a gray scale image
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
prewitt_kernelx = [-1 0 1;-1 0 1; -1 0 1];
prewitt_kernely = [1 1 1; 0 0 0; -1 -1 -1];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        convx = temp.*prewitt_kernelx;
        outputx(i,j) = sum(convx(:));
        convy = temp.*prewitt_kernely;
        outputy(i,j) = sum(convy(:));
        output(i,j) = outputx(i,j)+outputy(i,j);
    end
end
output = uint8(output);
imshow(output)