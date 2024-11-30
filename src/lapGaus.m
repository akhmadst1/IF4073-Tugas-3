function imageEdge = lapGaus(image)
    % Deteksi tepi dengan operator Laplace of Gaussian
    
    % Membuat filter Gaussian ukuran n x n dengan standar deviasi sigma
    sigma = 0.5;
    n = 5;
    [x, y] = meshgrid(-(n-1)/2:(n-1)/2, -(n-1)/2:(n-1)/2); % Matriks koordinat
    gaussian_filter = exp(-(x.^2 + y.^2) / (2 * sigma^2)); % Rumus Gaussian
    gaussian_filter = gaussian_filter / sum(gaussian_filter(:)); % Normalisasi

    % Melakukan konvolusi mean_filter dengan gambar
    gaussian_filtered_image = convn(image, gaussian_filter);
    
    % Filter mask laplacian
    h = [1 1 1; 1 -8 1; 1 1 1];
    % Konvolusi gambar dengan filter mask
    imageEdge = convn(double(gaussian_filtered_image), double(h), 'same');
end