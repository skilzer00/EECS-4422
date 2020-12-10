im = imread('low_lum.tif');
top = 1;
bottom = 300;
left = 300;
right = 600;
noiseAnalCrop(im,top,bottom,left,right)

function noise = noiseAnalCrop(im,top,bottom,left,right)
%Accepts RGB image and pixel coordinates of corners of region of interest
%Returns estimate of noise level, as standard deviation divided by mean luminance.
im = mean(double(im(top:bottom,left:right,:)),3);
noise = std(im(:))/mean(im(:));
end
