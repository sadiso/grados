
function clusterMatrix = spectralBandsForCluster(clusters)
clusterMatrix(400,5) = zeros; %(pixeles, numero de clusters)
f = 0;
c = 0;
for f = 1:5 % columnas de la matriz cluster
    n = 0;
   for c = 1:400 %filas de la matriz cluster
      v = clusters(c,f);
      if (v > 0)
         n = n + 1; 
         clusterMatrix(n,f) =  c; %matriz con las bandas espectrales de cada cluster,
%                         los valores de cada posición son las bandas
%                         espectrales y la columna es el cluster al que
%                         pertenece
      end
   end
end