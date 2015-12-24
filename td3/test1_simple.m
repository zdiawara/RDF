function test1_simple()

  x = load("td4_d1.mat").x;
 
  yd = [ ones(1,25) -1*ones(1,25)];  % reponse attendue
  
  [w] = apprentissage_simple(x,yd);
  
end