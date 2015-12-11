% Discrimation parametrique 

function clas = decision_kppv(test , classe_origine , k , m , x)

  nb_classe = max(classe_origine);
  
  N = size(test,2) ;
  
  n = size(x,2) ;
  
  for i = 1 :  n   % Parcours des individus à classer
  
     index = plusProcheVosin(test,N,x(:,i),k,m); % Indice des k plus proches voisin 
     
     classes = classe_origine(index); % Classe des k plus proches voisins 
     
     nb_ind_par_clas = [];
     
     % Cherche le nombre d'occurence 
     
     for j = 1 : nb_classe
     
        nb_ind_par_clas(j) = length( find(classes==j) );
     
     end
     
     clas(i) = find( nb_ind_par_clas == max(nb_ind_par_clas) ) ; % Defini la classe de 
  
  end
  
end % fin fonction 



% Cherche les indices des k plus proches voisins  

function index = plusProcheVosin(test , N , x , k , m )
    
    d = [] ;
    
    % Calcul distance entre l'individu a classifier et les k individus
    % de l'ensemble d'apprentissage. On garde egalement leurs indices
    for j = 1 : k 
      d(1,j) = distance( test(:,j) , x , m) ;
      d(2,j)= j;
    end
  
    % Parcours du reste de l'ensemble d'apprenstissage en calculant 
    % en cherchant ceux qui sont proches de l'individu a classifier 
    for j = k+1 : N 
    
      a = distance( test(:,j) , x , m) ;
      b = max(d(1,:));
      
      if a < b
          l = find(d(1,:)==b)(1);  
          d(1,l) = a;
          d(2,l) = j;
      end     
    end
    
    index = d(2,:);
end



function d = distance(x,y,m)
  d = (x(1,1) - y(1,1))^2* m(1,1) + (x(2,1) - y(2,1))^2* m(2,2);
end