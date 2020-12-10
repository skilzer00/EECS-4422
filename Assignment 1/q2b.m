im1 = imread('im1.tif');
im2 = imread('im2.tif');
noise = noiseAnalDiff(im1,im2);

function noise = noiseAnalDiff(im1,im2)
%Accepts two RGB images of the same scene taken at two different times. 
%These are first converted to intensity images by averaging R,G and B channels.
%Then the noise estimate is computed based upon the standard deviation of the difference image
%divided by the mean of the first image.
diff = mean(double(im1)-double(im2),3);
noise = std(diff(:))/mean(im1(:));
end
