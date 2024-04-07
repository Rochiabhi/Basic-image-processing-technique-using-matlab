clc;
clear all;
close all;
% performing image enhancement filter operation over a gray scale image
% there are two kinds of image enhancement kernel

% image enhancement kernel operation type 1 
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
imageEnhancement_kernel1 = [0 -1 0; -1 5 -1; 0 -1 0];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        conv = temp.*imageEnhancement_kernel1;
        output(i,j) = sum(conv(:));
        
    end
end
output = uint8(output);
imshow(output)


% image enhancement kernel operation type 2
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
imageEnhancement_kernel2 = [-1 -1 -1; -1 9 -1; -1 -1 -1];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        conv = temp.*imageEnhancement_kernel2;
        output(i,j) = sum(conv(:));
        
    end
end
output = uint8(output);
imshow(output)










