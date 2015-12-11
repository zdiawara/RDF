function [erreur,sigma] = discrimation_param(filename)

  data = load(filename); % Chargement de donnees 

  classe_origine = defineOrigClasse(filename,data);
  
  nb_classe = max(classe_origine);
  
  p = 1 / 3 ;     
  
  m = [];
  
  sigma=zeros(2,2,nb_classe);
  
  for i = 1 : nb_classe
  
    y = find(classe_origine==i);
    
    % Vecteur moyen 
    m(1,i) = mean(data.test(1,y)); 
    m(2,i) = mean(data.test(2,y));
    
    % Variance et covariance
    v = covariance( data.test(:,y) , m(:,i) );
    e1 = variance(data.test(1,y),m(1,i));
    e2 = variance(data.test(2,y),m(2,i));
    
    % Matrice variance covariance
    sigma(:,:,i) = [e1 v ; v e2];
        
  end 
  
  clas = decision_bayes(m,sigma,p,data.x);
  
  erreur = erreur_classif(data.clasapp , clas);

  affiche_classe(data.x , clas);

end

% Calcul la covariance de deux mesures
function v = covariance(s , x)
  n = size(s,2);
  som = 0;
  for i = 1 : n
    som = som + ( s(1,i) - x(1,1) ) * ( s(2,i) - x(2,1) ) ;
  end
  v = som / n ;
end

% Calcul la variance d'une mesure
function e = variance(x,m)
  n = length(x);
  som = 0;
  for i = 1 : n
    som = som + ( x(i) - m )^2 ;
  end
  e = som / n ;
end 