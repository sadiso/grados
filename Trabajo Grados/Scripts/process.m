clear

%Paso 1

I = read_HSI('Indian.bil');

I = shiftdim(I,2);

H = I(:,:);

S = H';

R = corr(S);

Clusters = SpectralClustering(R, 20, 1);

