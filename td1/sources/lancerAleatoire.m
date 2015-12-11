% x represente les donnees de l'apprentissage
% k le nombre de partition a obtenir 
% m est la metrique 

% Dans cet algorithme, nous choisissons k centre de gravite puis nous lancons l'algorithme de coalescence

function [c , g]=lancerAleatoire(x , k , m)

  j = floor( rand(1,k)*size(x,2) ) + 1 ; % k nombre aleatoire comprise entre 1 et size(x,2)
  
  gravite = [ x(1 , j ); x(2 , j )];   % Choix du centre de gravite initiaux de facon aleatoire
  
  [c , g] = coalescence(x , k , m , gravite);   % Excecution de l'algorithme de coalescence
   
end 