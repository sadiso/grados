function AlfaSubD = calculateAlfa(Columna, MatrizConPixelesPorCluster)
    numeroPixelesPorCluster = 0;
    z = 0;
    for z = 1:400
        if ((MatrizConPixelesPorCluster(z,Columna)) > 0)
            %contar el numero de pixeles por cluster
            numeroPixelesPorCluster = numeroPixelesPorCluster + 1;
        end
    end
    
    AlfaSubD = numeroPixelesPorCluster / 400; %numero de pixeles en cada cluster / numero total de pixeles por cluster