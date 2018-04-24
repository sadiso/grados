%clear

%Paso 1

%I = read_HSI('Indian.bil');

%I = shiftdim(I,2);

%H = I(:,:)';

%S = H';

%R = corr(S);

%Paso 2

%Clusters = SpectralClustering(R, 20, 1);

%Paso 3

%matrixWithSpectralBands = spectralBandsForCluster(Clusters);
%Funcion subSpaceOfS para retornar el sub - espacio

%Paso 4 y 5

% d = 20;
% T = cell(1,d);
% for IndiceT = 1 : d
     
%     T(IndiceT) = subSpaceOfS(IndiceT,S,matrixWithSpectralBands);
    
% end

%Paso 6

% L = cell(1,d);
% for IndiceL = 1 : d
     
%     L(IndiceL) = T(IndiceL)' * T(IndiceL);
     
% end

%Paso 7 y 8

% Vector = cell(1,d);
% Landa = cell(1,d);
% for IndiceVL = 1 : d
     
%     [Vector(IndiceVL), Landa(IndiceVL)] = eig(L(IndiceVL));
     
% end

%Paso 9

%J = null;

%Paso 10 hasta 18

%Calcular alfa sub d

%codigo

%Calcular e a la d - sub k, landa

%codigo