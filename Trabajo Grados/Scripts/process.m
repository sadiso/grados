clear

%Paso 1

MatrizReducida = zeros(10,10,10);
load('IndianSubset.mat');
 
for Fila = 1:10
    for Columna = 1:10
        for Pixel = 1:10
            MatrizReducida(Fila,Columna,Pixel) = I2(Fila,Columna,Pixel);
        end
    end
      
end
 
I = shiftdim(MatrizReducida,2);
 
H = I(:,:)';
 
S = H';
 
R = corr(S);

%Paso 2

Clusters = SpectralClustering(R, 2, 1);

%Paso 3

matrixWithSpectralBands = spectralBandsForCluster(Clusters);
%Funcion subSpaceOfS para retornar el sub - espacio

%Paso 4 y 5

% T1 = subSpaceOfS(1,S,matrixWithSpectralBands);
% T2 = subSpaceOfS(2,S,matrixWithSpectralBands);

d = 2;
T = cell(1,d);
IndiceT = 0;
for IndiceT = 1 : d
      
    T(IndiceT) = {subSpaceOfS(IndiceT,S,matrixWithSpectralBands)};
    
end

%Paso 6

% L1 = T1' * T1;
% L2 = T2' * T2;

L = cell(1,d);
for IndiceL = 1 : d
    
    L(IndiceL) = {T{(IndiceL)}' * T{(IndiceL)}};
     
end

%Paso 7 y 8

% [Vector1,Landa1] = eig(L1);
% [Vector2,Landa2] = eig(L2);

Vector = cell(1,d);
Landa = cell(1,d);
for IndiceVL = 1 : d
     
    [Vector{(IndiceVL)}, Landa{(IndiceVL)}] = eig(L{(IndiceVL)});
     
end

%Paso 9

%J = null;

%Paso 10 hasta 18

%Calcular alfa sub d
%crear una cell para este punto
AlfaD1 = calculateAlfa(1,matrixWithSpectralBands);
AlfaD2 = calculateAlfa(2,matrixWithSpectralBands);

%Calcular e a la d - sub k, landa

ESubD1 = cumsum(cumprod(Landa{(1)}));
ESubD2 = cumsum(cumprod(Landa{(2)}));