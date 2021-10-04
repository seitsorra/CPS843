I = rgb2gray(imread("sunflower.jpg"));
Id = im2double(I);

% perform power-law transform with lambda 0.3
out = (Id.^0.3);

% perform power-law transform with lambda 3
out1 = (Id.^3.0);

imwrite(out, "power_law_lamda=p3.jpg");
imwrite(out1, "power_law_lamda=3.jpg");