function imageEdge = lapGaus(image)
    % Ensure the input image is grayscale
    if size(image, 3) == 3
        image = rgb2gray(image);
    end

    % Define Gaussian filter
    sigma = 0.05;
    n = 20;
    [x, y] = meshgrid(-(n-1)/2:(n-1)/2, -(n-1)/2:(n-1)/2);
    gaussian_filter = exp(-(x.^2 + y.^2) / (2 * sigma^2));
    gaussian_filter = gaussian_filter / sum(gaussian_filter(:));

    % Apply Gaussian filter
    gaussian_filtered_image = conv2(double(image), gaussian_filter, 'same');

    % Define Laplacian filter
    h = [1 1 1; 1 -8 1; 1 1 1];

    % Apply Laplacian filter
    imageEdge = conv2(double(gaussian_filtered_image), double(h), 'same');
end