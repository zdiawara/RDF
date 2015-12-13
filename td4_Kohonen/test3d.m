function [] = test3d()

  img = imread('FEMME.ppm');
  
  x=zeros(3,256*256); 
  
  ind=1; 
  
  for b = 1 : 256 , 
  
    for bb=1:256, 
      
      x(:,ind)=img(b,bb,:); 
      
      ind=ind+1; 
    
    end;
  
  end;
  
  k = 8 ;         % Nombre de noeud par 
  
  nbiter = 500;   % Nombre d'iteration
  
  % Initialisation de mu et sigma
  
  MUinitial = 0.5; MUfinal = 0.1; SIGMAinitial= 3; SIGMAfinal= 0.1;
  
  iter = 0 : 1 : (nbiter-1);
  
  mu = MUinitial + iter/(nbiter-1) * (MUfinal - MUinitial) ; 
  
  sigma = SIGMAinitial + iter/(nbiter-1) * (SIGMAfinal - SIGMAinitial) ; 
  
  % Application de l'algorithme de kohonens
  w = kohonen3d(x , k , mu , sigma , nbiter);
  
  pas = 256 ;
  
  for b = 1 : pas
    
    for bb=1 : pas
      
      i = pas*( b - 1 ) + bb; 
      
      img(b,bb,:) = winner3d(x(:,i),w,k);
    
    end
  
  end
  
  imwrite(img,'ooo.ppm');
  
end
