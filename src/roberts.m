function imageEdge = roberts(image)
    % Deteksi tepi dengan operator Roberts

    % Filter mask Roberts X & Y
    rX = [1 0; 0 -1];
    rY = [0 1; -1 0];

    % Konvolusi gambar dengan filter mask
    jX = convn(double(image), double(rX), 'same');
    jY = convn(double(image), double(rY), 'same');
    imageEdge = sqrt(jX.^2 + jY.^2);
end