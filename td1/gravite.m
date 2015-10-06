function g = gravite(x , k)
    
    j = floor( rand(1,k)*size(x,2) ) + 1 ; % Aleatoire
    %j = []; % Fixe
    
    g = [ x(1 , j ); x(2 , j )];
    
    %gravite(x , k , false);
end
    