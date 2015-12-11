function [w] = kohonen2d(x , K , mu , sigma , nbiter)

  % Initialisation du poids
  for l = 1 : K  
      for c = 1 : K     
        w(l,c,:) =  rand(1,2)';
      end
  end
  
    
  for i = 1 : nbiter
  
    indice = floor( rand()*size(x,2) ) + 1 ; %  Pour choisir aleatoirement un individu
    
    q = winner2d( x(:,indice) , w , K);        % Choix du neuronne gagnant 
    
    % Correction de poids 
    
    for l = 1 : K
           
      for c = 1 : K
        
        j = [l ; c] ;
        
        h = mu(i) * exp( (-0.5 * norm(j-q)^2) / sigma(i)^2 ) ;
        
        w(l,c,1) = w(l,c,1) + h * ( x(1,indice) - w(l,c,1) ) ;  
        w(l,c,2) = w(l,c,2) + h * ( x(2,indice) - w(l,c,2) ) ;  
                
      end
    
    end
    
  end
  
  
end
