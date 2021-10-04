I = rgb2gray(imread("sunflower.jpg"));

Id = im2double(I);

% perform power-law transform with lambda 0.3
out = (Id.^0.3);

% perform power-law transform with lambda 3
out1 = (Id.^3.0);

% show original image and its version with equalized histogram
subplot(3, 4, 1), imshow(I), title("Original Image");
subplot(3, 4, 2), imhist(I, 256), title("Histogram of Original Image");
J = histeq(I,256);
subplot(3, 4, 3), imshow(J), title("Image with equalized histogram");
subplot(3, 4, 4), imhist(J), title("Equalized histogram");

% show transformed image with lambda 0.3 and its version with equalized histogram
subplot(3, 4, 5), imshow(out), title("Power-low y=0.3");
subplot(3, 4, 6), imhist(out, 256), title("Histogram of Power-low y=0.3");
J = histeq(out,256);
subplot(3, 4, 7), imshow(out), title("Power-low y=0.3 with equalized histogram");
subplot(3, 4, 8), imhist(out), title("Power-low y=0.3 Equalized histogram");

% show transformed image with lambda 3 and its version with equalized histogram
subplot(3, 4, 9), imshow(out1), title("Power-low y=3");
subplot(3, 4, 10), imhist(out1, 256), title("Histogram of Power-low y=3");
J = histeq(out1,256);
subplot(3, 4, 11), imshow(out1), title("Power-low y=3 with equalized histogram");
subplot(3, 4, 12), imhist(out1), title("Power-low y=3 Equalized histogram");

