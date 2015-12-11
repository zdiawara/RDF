function g = gravite(x , k)
    
    % Calcul de l'ecart type et moyenne des deux mesures 
    
    ecart2 = sqrt( var(x(2,:)) );
    m2     = mean(x(2,:));
    
    gravite = false ;
    
    j = [] ;
    while ~gravite 
      j = floor( rand(1,k)*size(x,2) ) + 1 ; % Aleatoire
      if x(2,j)(1) <= m2 - ecart2 && x(2,j)(2) >= m2 + ecart2
        gravite = true;    
      end
    end 
    j = floor( rand(1,k)*size(x,2) ) + 1 ; % Aleatoire
    g = [ x(1 , j ); x(2 , j )];
       
end
    