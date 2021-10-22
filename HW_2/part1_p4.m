img = imread("Bikesgray.jpg");
noise = imnoise(img, "gaussian");
noise1 = imnoise(img, "gaussian", 0, 0.05);

subplot(3, 1, 1), imshow(img), title("Original");
subplot(3, 1, 2), imshow(noise), title("Gaussian Noise (var = 0.01)");
subplot(3, 1, 3), imshow(noise1), title("Gaussian Noise (var = 0.05)");

% choose an average filter
avg_filt = fspecial("average", [5, 5]);
gaussian_filt = fspecial("gaussian", [30, 30], 1.5);

F1 = imfilter(noise, avg_filt, 'replicate');
F2 = imfilter(noise1, avg_filt, 'replicate');

F3 = imfilter(noise, gaussian_filt, 'replicate');
F4 = imfilter(noise1, gaussian_filt, 'replicate');

figure, subplot(2, 2, 1), imshow(F1), title("Avg filter on Gaussian with var 0.01");
subplot(2, 2, 2), imshow(F2), title("Avg filter on Gaussian with var 0.05");
subplot(2, 2, 3), imshow(F3), title("Gaussion filter on Gaussian with var 0.01");
subplot(2, 2, 4), imshow(F4), title("Gaussion filter on Gaussian with var 0.05");

