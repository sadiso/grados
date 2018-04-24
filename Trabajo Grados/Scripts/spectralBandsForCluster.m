
function clusterMatrix = spectralBandsForCluster(clusters)
clusterMatrix(21025,20) = zeros;
f = 0;
c = 0;
for f = 1:20 % columnas de la matriz cluster
    n = 0;
   for c = 1:21025 %filas de la matriz cluster
      v = clusters(c,f);
      if (v > 0)
         n = n + 1; 
         clusterMatrix(n,f) =  c; %matriz con las bandas espectrales de cada cluster,
%                         los valores de cada posici�n son las bandas
%                         espectrales y la columna es el cluster al que
%                         pertenece
      end
   end
end