%clusterNumber: es el cluster al que se desea calcular el sub-espacio
%S: la matriz con la que se calcula el sub-espacio
%m: matriz con las bandas espectrales de cada cluster
function Fm = subSpaceOfS(clusterNumber, S, m)
    Fm = []; %(debe ser igual al tamaño de S)
    z = 0;
    for z = 1:400
        if ((m(z,clusterNumber)) > 0)
            %solo se copian las columnas que se indiquen en la matriz m
            Fm = [Fm , S(:,m(z,clusterNumber))];
        else
            break
        end
    end