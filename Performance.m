%%%%% PERFORMANCE METRICS %%%%%

% Mean Squared Error

% M = 383;
% N = 341;
% MSE = 0;
% for i=1:M
%     for j=1:N
%         SE = (cast(cropped(i,j),'uint32') - cast(filteredGauss(i,j),'uint32'))^2;
%         MSE = MSE + SE;
%     end
% end
% 
% MSE = MSE/(M*N);

MSE = immse(cropped, filteredGauss);

% Peak Signal-to-Noise Ratio

R = 255;

X = (R^2)/MSE;

PSNR = log10(double(X));