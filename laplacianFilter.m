clc;
clear all;
close all;
% performing laplacian filter operation over a gray scale image
%there are four types of laplacian filter kernel 

%laplacian filter kernel type 1
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
laplacian_kernel1 = [0 1 0 ; 1 -4 1; 0 1 0];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        conv = temp.*laplacian_kernel1;
        output(i,j) = sum(conv(:));
        
    end
end
output = uint8(output);
imshow(output)


%lapalcian filter kernel type 3 
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
laplacian_kernel3 = [0 -1 0; -1 4 -1; 0 -1 0];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        conv = temp.*laplacian_kernel3;
        output(i,j) = sum(conv(:));
        
    end
end
output = uint8(output);
imshow(output)


%lapalcian filter kernel type 2 
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
laplacian_kernel2 = [1 1 1 ; 1 -8 1; 1 1 1];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        conv = temp.*laplacian_kernel2;
        output(i,j) = sum(conv(:));
        
    end
end
output = uint8(output);
imshow(output)



%lapalcian filter kernel type 4 
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
laplacian_kernel4 = [-1 -1 -1 ; -1 8 -1; -1 -1 -1];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        conv = temp.*laplacian_kernel4;
        output(i,j) = sum(conv(:));
        
    end
end
output = uint8(output);
imshow(output)



