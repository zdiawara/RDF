function test1_simple_suite()

  x = load("td4_d1.mat").x;
 
  yd = [ ones(1,25) -1*ones(1,25)];  % reponse attendue
  
  [w] = apprentissage_widrow(x,yd,1);
  
end