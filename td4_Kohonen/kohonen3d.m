function [w] = kohonen3d(x, K, mu, sigma, nbiter )
    
    % Initialisation du poids
    for l = 1 : K  
        for c = 1 : K 
          for h = 1 : K          
            w(l,c,h,:) =  rand(1,3)';
          end
        end
    end
    
    
   for i = 1 : nbiter
  
    indice = floor( rand()*size(x,2) ) + 1 ; %  Pour choisir aleatoirement un individu
    
    q = winner3d( x(:,indice) , w , K);        % Choix du neuronne gagnant 
    
    % Correction de poids 
    
    for l = 1 : K
           
      for c = 1 : K
        
        for h = 1 : K
          
          j = [l ; c ; h] ;
          
          func_h = mu(i) * exp( (-0.5 * norm(j-q)^2) / sigma(i)^2 ) ;
          
          for ii = 1 : 3
             w(l,c,h,ii) = w(l,c,h,ii) + func_h * ( x(ii,indice) - w(l,c,h,ii) ) ;  
          end
          
        end
                
      end
    
    end
    
  end
  
end
