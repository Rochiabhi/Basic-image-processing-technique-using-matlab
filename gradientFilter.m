clc;
clear all;
close all;
% performing gradient kernel operation over a gray scale image
% grdient can be calculated using three way for backward difference
% approach, central difference approach and backward difference approach.


% gradient kernel using backward difference difference approach
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
gradient_kernel1x = [0 0 0; 1 -1 0; 0 0 0];
gradient_kernel1y = [0 1 0; 0 -1 0;0 0 0];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        convx = temp.*gradient_kernel1x;
        outputx(i,j) = sum(convx(:));
        convy = temp.*gradient_kernel1y;
        outputy(i,j) = sum(convy(:));
        output(i,j) = sqrt(outputx(i,j)^2+outputy(i,j)^2);
    end
end
output = uint8(output);
imshow(output)


%gradient kernel using central difference approach
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
gradient_kernel2x = [0 0 0;-1 0 1;0 0 0];
gradient_kernel2y = [0 -1 0; 0 0 0;0 1 0];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        convx = temp.*gradient_kernel2x;
        outputx(i,j) = sum(convx(:));
        convy = temp.*gradient_kernel2y;
        outputy(i,j) = sum(convy(:));
        output(i,j) = sqrt(outputx(i,j)^2+outputy(i,j)^2);
    end
end
output = uint8(output);
imshow(output)


%gradient kernel using forward difference approach
i1 = imread('blur sample image 2.png');
i2 = rgb2gray(i1);
[m,n] = size(i2);
gradient_kernel3x = [0 0 0;-1 1 0; 0 0 0];
gradient_kernel3y = [0 -1 0; 0 1 0; 0 0 0];
i3 = padarray(i2,[1,1]);
for(i= 1:m)
    for(j= 1:n)
        
         temp = i3(i:i+2, j:j+2);
        temp = double(temp);
        convx = temp.*gradient_kernel3x;
        outputx(i,j) = sum(convx(:));
        convy = temp.*gradient_kernel3y;
        outputy(i,j) = sum(convy(:));
        output(i,j) = sqrt(outputx(i,j)^2+outputy(i,j)^2);
    end
end
output = uint8(output);
imshow(output)