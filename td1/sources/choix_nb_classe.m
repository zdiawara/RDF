function choix_nb_classe()

  [x,m] = charger("td2_d3.txt");
  
  k = 6 ;
  
  a = [1 : k]; 
  
  intra = [] ;
  
  for i = 1 : k      % Parcours du nombre de classe 
    
    [clas , g] = lancerAleatoire(x,i,m);  % Algo de coalescence
    
    d = 0 ;
 
    for c = 1 : i                 % Par chaque classe calcul de la somme des distances de
                                  % Chaque individus par rapport au centre de gravité
        y = find(clas==c) ;
   
        ind = [x(1,y) ; x(2,y)];
        
        for k = 1 : size(ind,2)
        
          d = d + ( ind(1,k) - g(1,c) )^2 + ( ind(2,k) - g(2,c) )^2; 
        
        end
        
    end

    intra(i) = d ;
  
  end
  
  plot(a , intra ); % Affichage de la courbe 
  
end

