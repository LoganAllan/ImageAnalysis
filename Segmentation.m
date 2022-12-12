%%%%% SEGMENTATION %%%%%

% K-Means Clustering Method

% Optimal k
[L7] = imsegkmeans(filteredGauss,7);

B7 = labeloverlay(filteredGauss,L7);
figure
imshow(B7)


% k=3 to highlight sun issue
[L3] = imsegkmeans(filteredGauss,3);

B3 = labeloverlay(filteredGauss,L3);
figure
imshow(B3)