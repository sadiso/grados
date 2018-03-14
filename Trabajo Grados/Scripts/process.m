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

% T1 = subSpaceOfS(1,S,matrixWithSpectralBands);
% T2 = subSpaceOfS(2,S,matrixWithSpectralBands);
% T3 = subSpaceOfS(3,S,matrixWithSpectralBands);
% T4 = subSpaceOfS(4,S,matrixWithSpectralBands);
% T5 = subSpaceOfS(5,S,matrixWithSpectralBands);
% T6 = subSpaceOfS(6,S,matrixWithSpectralBands);
% T7 = subSpaceOfS(7,S,matrixWithSpectralBands);
% T8 = subSpaceOfS(8,S,matrixWithSpectralBands);
% T9 = subSpaceOfS(9,S,matrixWithSpectralBands);
% T10 = subSpaceOfS(10,S,matrixWithSpectralBands);
% T11 = subSpaceOfS(11,S,matrixWithSpectralBands);
% T12 = subSpaceOfS(12,S,matrixWithSpectralBands);
% T13 = subSpaceOfS(13,S,matrixWithSpectralBands);
% T14 = subSpaceOfS(14,S,matrixWithSpectralBands);
% T15 = subSpaceOfS(15,S,matrixWithSpectralBands);
% T16 = subSpaceOfS(16,S,matrixWithSpectralBands);
% T17 = subSpaceOfS(17,S,matrixWithSpectralBands);
% T18 = subSpaceOfS(18,S,matrixWithSpectralBands);
% T19 = subSpaceOfS(19,S,matrixWithSpectralBands);
% T20 = subSpaceOfS(20,S,matrixWithSpectralBands);

%Paso 6

% L1 = T1' * T1;
% L2 = T2' * T2;
% L3 = T3' * T3;
% L4 = T4' * T4;
% L5 = T5' * T5;
% L6 = T6' * T6;
% L7 = T7' * T7;
% L8 = T8' * T8;
% L9 = T9' * T9;
% L10 = T10' * T10;
% L11 = T11' * T11;
% L12 = T12' * T12;
% L13 = T13' * T13;
% L14 = T14' * T14;
% L15 = T15' * T15;
% L16 = T16' * T16;
% L17 = T17' * T17;
% L18 = T18' * T18;
% L19 = T19' * T19;
% L20 = T20' * T20;

%Paso 7 y 8

%[Vector1,Landa1] = eig(L1);
%[Vector2,Landa2] = eig(L2);
%[Vector3,Landa3] = eig(L3);
%[Vector4,Landa4] = eig(L4);
%[Vector5,Landa5] = eig(L5);
%[Vector6,Landa6] = eig(L6);
%[Vector7,Landa7] = eig(L7);
%[Vector8,Landa8] = eig(L8);
%[Vector9,Landa9] = eig(L9);
%[Vector10,Landa10] = eig(L10);
%[Vector11,Landa11] = eig(L11);
%[Vector12,Landa12] = eig(L12);
%[Vector13,Landa13] = eig(L13);
%[Vector14,Landa14] = eig(L14);
%[Vector15,Landa15] = eig(L15);
%[Vector16,Landa16] = eig(L16);
%[Vector17,Landa17] = eig(L17);
%[Vector18,Landa18] = eig(L18);
%[Vector19,Landa19] = eig(L19);
%[Vector20,Landa20] = eig(L20);