function imageEdge = laplace(image)
    % Deteksi tepi dengan operator laplace

    %Filter mask laplacian
    h = [0 1 0; 1 -4 1; 0 1 0];
    %Konvolusi image dengan filter mask 
    imageEdge = convn(double(image), double(h), 'same');
end