function [clas] = decision_bayes(m,sigma,p,x)
  
  k = size(m,2);
  
  n = size(x,2);
  
  for i = 1 : n   % Parcours des individus a classifier 
  
    s = x(:,i)-m(:,1);   
    
    f =  p * exp(-0.5*(s')*inverse(sigma(:,:,1))*s) / (2*pi*sqrt(det(sigma(:,:,1)))); % Regle de decision 
    
    clas(i) = 1;
    
    % L'individu appartient a la classe pour laquelle f est maximale 
    
    for j = 2 : k
      
      s = x(:,i) - m(: , j);
      
      distr = p * exp(-0.5*(s')*inverse(sigma(:,:,j))*s) / (2*pi*sqrt(det(sigma(:,:,j)))); % Regle de decision
      
      if distr > f   % recherche de la valeur maximale
        
        f = distr ;
        
        clas(i) = j ;
      
      end 
    
    end
  
  end

end