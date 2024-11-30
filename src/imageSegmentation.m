function imageEdge = imageSegmentation(image, filter)
    % Deteksi tepi
    image = imread(image);
    switch filter
        case 'laplace'
            imageEdge = uint8(laplace(rgb2gray(image)));
        case 'lapGaus'
            imageEdge = uint8(lapGaus(rgb2gray(image)));
        case 'prewitt'
            imageEdge = uint8(prewitt(rgb2gray(image)));
        case 'roberts'
            imageEdge = uint8(roberts(rgb2gray(image)));
        case 'sobel'
            imageEdge = uint8(sobel(rgb2gray(image)));
        case 'canny' 
            imageEdge = canny(rgb2gray(image));
    end
    
    imshow(imageEdge);
end