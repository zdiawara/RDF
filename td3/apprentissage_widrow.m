function [w] = apprentissage_widrow(x,yd,active)

  w = [0.5;2*rand(1,2)'];
  
  alpha = 0.1;
  
  y = [];
  
  n = size(x,2);
  
  echelle(1) = min(x(1,:))-1 ;
  echelle(2) = max(x(1,:))+1 ;
  echelle(3) = min(x(2,:))-1 ;
  echelle(4) = max(x(2,:))+1 ;
  
  convergence = false;
  
  cpt = 1; 
  
  droite = [];
  
  x1 = -1:1; 
  
  cumulErreur = [];
  
  while ~convergence
    
    cumulErreur(cpt) = 0 ;
    
    evolutionErreur = 0;
    
    for i = 1 : n
      
      p = perceptron_simple(x(:,i) , w , active) ;
      
      y(i) = decision ( p ) ;
      
      e = yd(i) - p ;
      
      cumulErreur(cpt) = cumulErreur(cpt) + e^2;
      
      evolutionErreur = evolutionErreur + e * derive( p , active ) * [1 ; x(:,i)] ;
                    
    end

    w = w + alpha * evolutionErreur;    
    
    
    droite(cpt,:) = (-w(1) - x1*w(2))/w(3);
    
    afficher_classe( x , y , droite , x1 , echelle, true) ;
  
    cpt = cpt + 1 ;
    
    if y==yd | cpt > 100
    
      convergence = true;
    
    end

  end
  
  a = 1 : length(cumulErreur) ;
  %plot(a , cumulErreur );
  
end 



function [d] = decision(x)
  if x >= 0
    d = 1 ;
  else
    d = -1 ;
  end
end



function d = derive(phiX , active)

  if active == 1 
      d = 1 - phiX^2 ;      
  else
      d = phiX - phiX^2 ;
  end  
end
