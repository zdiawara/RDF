function test2d()
  
  x = load("data.mat").xunif;

  k = 3 ;
  
  nbiter = 500;
  
  MUinitial = 0.5; MUfinal = 0.1; SIGMAinitial= 3; SIGMAfinal= 0.1;
  
  iter = 0 : 1 : (nbiter-1);
  
  mu = MUinitial + iter/(nbiter-1) * (MUfinal - MUinitial) ; 
  
  sigma = SIGMAinitial + iter/(nbiter-1) * (SIGMAfinal - SIGMAinitial) ; 
  
  w = kohonen2d(x , k , mu , sigma , nbiter);
  
  clas = [];
  for i = 1 : size(x,2)
    q  = winner2d(x(:,i),w,k);
    clas(i) = (q(1)-1) + k*(q(2)-1)+1 ;
  end
  
  affiche_grille(w);
  
  affiche_classe(x,clas);
  

end
