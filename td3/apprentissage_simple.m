function [w] = apprentissage_simple(x,yd)
  
  w = [0.5;7;3];    % Poids initial
  
  alpha = 0.1;
  
  y = [];   % Vecteur pour stocker reponse de l'apprentissage de chaque individu
  
  echelle(1) = min(x(1,:))-1 ;
  echelle(2) = max(x(1,:))+1 ;
  echelle(3) = min(x(2,:))-1 ;
  echelle(4) = max(x(2,:))+1 ;
  
  convergence = false;
  
  droite = [];
  
  cpt = 1;
  
  n = size(x,2);
  
  x1 = -1:1; 
     
  %x2 = (-w(1) - x1*w(2))/w(3);   %Equation de la droite 

  while ~convergence
    
    % Parcours l'ensemble des individus, 
    for i = 1 : n
      
      y(i) = perceptron_simple(x(:,i) , w ,0);  %
      
      % Mise a jour des poids synaptique si erreur
      if y(i) ~= yd(i)
      
        w = w + alpha * ( yd(i) - y(i)  ) * [1 ; x(:,i)] ;
          
      end
    
    end    
    
    droite(cpt,:) = (-w(1) - x1*w(2))/w(3);
    
    afficher_classe( x , y , droite , x1 , echelle) ;
    
    cpt = cpt + 1 ;
    
    if y==yd | cpt > 101
    
      convergence = true;
    
    end
    
  end
  
  a = 1 : length(e) ;
  plot(a , e );

end
