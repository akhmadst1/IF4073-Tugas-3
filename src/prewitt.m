function imageEdge = prewitt(image)
    % Deteksi tepi dengan operator Prewitt
    
    % Filter mask Prewitt X & Y
    pX = [-1 0 1; -1 0 1; -1 0 1];
    pY = [1 1 1; 0 0 0; -1 -1 -1];
    
    % Konvolusi gambar dengan filter mask
    jX = convn(double(image), double(pX), 'same');
    jY = convn(double(image), double(pY), 'same');
    imageEdge = sqrt(jX.^2 + jY.^2);
end