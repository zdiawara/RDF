function [w1 , w2 , y] = multiperceptron_widrow(x , yd)

  w1_1 = [rand(1,3)]';
  
  w1_2 = [rand(1,3)]';
    
  w1 = [ w1_1  ,  w1_2 ] ;

  w2 = [rand(1,3)]'; 
  
  alpha = 0.5;
    
  n = size(x,2);

  convergence = false;
     
  cumul_erreur = [];
  
  y = [];
  
  cpt = 1;
  
  while ~convergence
    
    cumul_erreur(cpt) = 0 ;
     
    for i = 1 : n
           
      p = multiperceptron(x(:,i) , w1 , w2) ;
      
      e = p - yd(i) ;
      
      erreurPi = e * ( p - p^2); % Erreur associée a la couche de sortie. 
      
      cumul_erreur(cpt) = cumul_erreur(cpt) + e^2;
      
      y(i) = decision ( p ) ; % Pour attribuer une classe
            
      % Calcul de la sortie intermediaire
      for k = 1 : size(w1,2) 
    
        y1(k) = perceptron_simple(x(:,i)  , w1(:,k) , 2);
            
      end
            
      % Retropropagation de l'erreur sur la couche cachée
      for k = 1 : size(w1 ,2)
        
        w1(:,k) = w1(:,k) - alpha * w2(k+1) * erreurPi * ( y1(k) - (y1(k))^2 )*[1 ; x(:,i)];
        
      end
      
      % Reglage des poids sur la couche de sortie 
      w2 = w2 - alpha * erreurPi * [1 ; y1'] ;
      
    end    
        
    cpt = cpt + 1 ;
    
    if cpt > 5000
      
      convergence = true;
    
    end
     
  end
  
  %Pour tracer la courbe de l'erreur 
  
  a = 1:length(cumul_erreur);
  
  plot(a , cumul_erreur);
  
end 


function [d] = decision(x)
  if x >= 0.5
    d = 1 ;
  else
    d = 0;
  end
end
