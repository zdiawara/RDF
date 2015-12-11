function erreur = prise_en_main()
  
  nk = 128 ;
   
  % Initialisation des individus 
  
  x1=[randn(1,nk)+4;randn(1,nk)+4];

  x2=[randn(1,nk)*2-4;randn(1,nk)*2-4];

  x3=[randn(1,nk);randn(1,nk)];
    
  x = [x1 x2 x3 ]; % Contient tous les individus 
  
  % Genration de la classe optimale 
  
  clas = [ones(1,nk) , 2*ones(1,nk) , 3*ones(1,nk)] ; 
  
  % Choisit les centres de gravités , applique l'algo de coalescence
  
  [clas2,g]=lancerAleatoire(x,3,m);

  erreur = erreur_classif(clas,clas2); % Calcul des erreurs de classification 
  
  affiche_classe(x,clas2);  % Affichage du resultat de classification

  plot(g(1,:) , g(2,:) , 'bk*');  % Affichage des centres gravites finaux

end
