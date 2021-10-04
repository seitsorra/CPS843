I = rgb2gray(imread("sunflower.jpg"));

% slice image into bit planes and save image
imwrite(bitget(I,1)*255, "plane 1.jpg");
imwrite(bitget(I,2)*255, "plane 2.jpg");
imwrite(bitget(I,3)*255, "plane 3.jpg");
imwrite(bitget(I,4)*255, "plane 4.jpg");
imwrite(bitget(I,5)*255, "plane 5.jpg");
imwrite(bitget(I,6)*255, "plane 6.jpg");
imwrite(bitget(I,7)*255, "plane 7.jpg");
imwrite(bitget(I,8)*255, "plane 8.jpg");

% construct the image using two highest bits and save image
highest_two = bitget(I,8)*128 + bitget(I,7)*64;
imwrite(highest_two, "highest_two_bis.jpg");

% construct the image using four highest bits and save image
highest_four = bitget(I,8)*128 + bitget(I,7)*64 + bitget(I,6)*32 + bitget(I,5)*16;
imwrite(highest_four, "highest_four_bis.jpg");

