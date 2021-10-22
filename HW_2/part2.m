A = imread("lowlight.jpg");
imshow(A);

% invert the original image
AInv = imcomplement(A);
imshow(AInv);

% reduce the haze effect
BInv = imreducehaze(AInv);
imshow(BInv);

% revert the image to get to the orignal image with improved lighting
B = imcomplement(BInv);
montage({A,B});

% Further improve the image by specifiying some more parameters in
% "imreducehaze"
BInv = imreducehaze(AInv, 'Method','approx','ContrastEnhancement','boost');
BImp = imcomplement(BInv);
figure, montage({A, BImp});


% Convert the input image from the RGB colorspace to the L*a*b* colorspace.
Lab = rgb2lab(A);

% Invert the L*a*b* image.
LInv = imcomplement(Lab(:,:,1) ./ 100);

% Dehaze the inverted image using the imreducehaze function.
LEnh = imcomplement(imreducehaze(LInv,'ContrastEnhancement','none'));

%Increase the saturation.
LabEnh(:,:,1)   = LEnh .* 100;
LabEnh(:,:,2:3) = Lab(:,:,2:3) * 2; % Increase saturation

% Convert the image back to an RGB image and display the original and the enhanced image, side-by-side.
AEnh = lab2rgb(LabEnh);
montage({A,AEnh});

% remove any noise that could be as a result of image low light improvement
B = imguidedfilter(BImp);
montage({BImp,B});

% Estimate Illumination Map
[BInv,TInv] = imreducehaze(AInv,'Method','approxdcp','ContrastEnhancement', 'none');

% Invert the enhanced image.
T = imcomplement(TInv);

% Display the original image next to the estimated illumination map in false color.
tiledlayout(1,2)
nexttile
imshow(A)
title('Lowlight Image')
nexttile
imshow(T)
title('Illumination Map')
colormap(hot)