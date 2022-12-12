%%%%% Histogram Threshold Inspection %%%%%

% Segmentation using a histogram
figure, imhist(filteredMedian)   % look at the hist to get a threshold

binary=roicolor(filteredMedian, 247, 255); 
figure, imshow(binary)  