%%%%% PRE-PROCESSING %%%%%

clear

% Import and show image 
image = imread('img2.jpeg');
figure
imshow(image);

% Convert to greyscale
greyscale = im2gray(image);
figure
imshow(greyscale);

% Crop the image to only include pixels relevant for our evaluation
cropped = imcrop(greyscale,[1 1 340 383]);
figure
imshow(cropped);

% Remove Noise
filteredGauss = imgaussfilt(cropped);
figure
imshow(filteredGauss);