%change im2.JPG to your JPG file
imin = imread('im2.JPG');
top = 1065;
bottom = 1450;
left = 410;
right = 820;
imout = whiteBalance(imin,top,bottom,left,right);

function imout = whiteBalance(imin,top,bottom,left,right)
%Corrects white balance based upon indicated ROI of white standard.
%imin and iout are RGB images. 
[h,w,d] = size(imin);
imin = im2double(imin);
mrgb = mean(reshape(imin,[],3));
mrgbc = mean(reshape(imin(top:bottom,left:right,:),[],3));
scale = mean(mrgb)/mean(mrgb./mrgbc);
imout = scale*imin./repmat(reshape(mrgbc,1,1,[]),h,w,1);
end
