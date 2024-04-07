clc;
clear all;
close all;
% performing box filter operation over a gray scale image
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
box_kernel = [1 2 1;2 4 2;1 2 1]/16;
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        conv = temp.*box_kernel;
        output(i,j) = sum(conv(:));
        
    end
end
output = uint8(output);
imshow(output)
