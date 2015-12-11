function erreur = kppv(filename , k)
  
  m = eye(2,2);     % Metrique 
  
  data = load(filename);  % Chargement des donnees 
  
  classe_origine = defineOrigClasse(filename,data);
  
  % lancement de l'algorithme de classification 
    
  clas = decision_kppv(data.test , classe_origine , k , m , data.x);

  erreur = erreur_classif(data.clasapp , clas); % Calcul du taux d'erreur 

  affiche_classe(data.x , clas);   % Affichage du resultat

end