%Fonction permettant de calculer la metrique permettant de 
% normaliser les mesures sur les individus

function m = metrique(x)
    n =  size(x , 2) ;
    c = size(x , 1) ;
    for i = 1 : c
        InverseVariance(i) = inv ( ( (n - 1) * var(x(i , :)) ) / n ) ;
    end
    m = diag( InverseVariance );
end
