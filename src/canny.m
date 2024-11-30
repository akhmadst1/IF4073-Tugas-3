function imageEdge = canny(image)
    % Deteksi tepi dengan operator Canny
    % Menggunakan fungsi built in Matlab
    imageEdge = edge(image, 'Canny');
end