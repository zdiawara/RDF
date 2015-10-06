
function [classe , gravite] = lancerAleatoire(x , k , m)

  j = floor( rand(1,k)*size(x,2) ) + 1 ; % Aleatoire
  
  g = [ x(1 , j ); x(2 , j )];
  
  [classe , gravite] = coalescence(x , k , m , g); 
  
  
  
  
end 