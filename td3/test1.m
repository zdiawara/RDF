function cpt = test1()

  x = load("td4_d1.mat").x;
  x = [rand() ; x];
  %x = [ 0 1 0 1 ; 0 0 1 1] ;
  
  yd = [ ones(1,25) -1*ones(1,25)];

  %yd = [-1 1 1 1];
  
  %[w] = apprentissage_simple(x,yd);
  [w] = apprentissage_widrow(x,yd,1);
  
end