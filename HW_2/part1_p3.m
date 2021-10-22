img = imread("Bikesgray.jpg");

filter = fspecial('average', [10, 10]);
blurred = imfilter(img, filter);

k = 1;
out = img + k * (img - blurred);
imwrite(out, "res/p3/unsharp_masking.jpg");

k = 5;
out = img + k * (img - blurred);
imwrite(out, "res/p3/high-boost.jpg");