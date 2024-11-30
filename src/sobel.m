function imageEdge = sobel(image)
    % Deteksi tepi dengan operator Sobel

    % Filter mask Sobel X & Y
    sX = [-1 0 1; -2 0 2; -1 0 1];
    sY = [1 2 1; 0 0 0; -1 -2 -1];

    % Konvolusi gambar dengan filter mask
    jX = convn(double(image), double(sX), 'same');
    jY = convn(double(image), double(sY), 'same');
    imageEdge = sqrt(jX.^2 + jY.^2);
end