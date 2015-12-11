function influence_pt_init()
  
  x = dlmread("td2_d1.txt");% chargement du fichier 
  
  m = metrique(x);          % Calcul de la metrique
  
  g = gravite(x,2);         % Choix du bon centre de gravité
  
  [clas,g2] = coalescence(x,2,m,g);  %  Application de l'algo de coalescence
  
  affiche_classe(x,clas);  % Affichage du resultat de classification

  plot(g2(1,:) , g2(2,:) , 'r*');  % Affichage des centres gravites finaux
  
end