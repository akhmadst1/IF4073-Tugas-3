function imageEdge = canny(image, threshold, sigma)
    % Deteksi tepi dengan operator Canny
    % Menggunakan fungsi built in Matlab
    imageEdge = edge(image, 'Canny', threshold, sigma);
end