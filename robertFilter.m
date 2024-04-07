clc;
clear all;
close all;
% performing robert filter operation over a gray scale image
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
robert_kernelx = [1 0; 0 -1];
robert_kernely = [0 -1; 1 0];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+1, j:j+1);
        temp = double(temp);
        convx = temp.*robert_kernelx;
        outputx(i,j) = sum(convx(:));
        convy = temp.*robert_kernely;
        outputy(i,j) = sum(convy(:));
        output(i,j) = outputx(i,j)+outputy(i,j);
    end
end
output = uint8(output);
imshow(output)

