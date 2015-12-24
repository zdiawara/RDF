function test2()

  x = load("td4_d2.mat").x;
 
  yd = [ ones(1,25) -1*ones(1,25)];  % reponse attendue
  
  [w] = apprentissage_widrow(x,yd,1);
  
  %[w] = apprentissage_simple(x,yd);
  
end