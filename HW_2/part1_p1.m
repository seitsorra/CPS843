img = imread("Bikesgray.jpg");

%roberts mask
R = edge(img, 'roberts');
imwrite(S, "res/p1/roberts.jpg");

% prewitt
P = edge(img, 'prewitt');
imwrite(S, "res/p1/prewitt.jpg");

% sobel
S = edge(img, 'sobel');
imwrite(S, "res/p1/sobel.jpg");