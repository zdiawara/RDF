function y = apprentissage_multicouches()
  
  x = [ 0 1 0 1 ; 0 0 1 1 ] ;
  
  yd = [0 1 1 0];
  
  [w1,w2,y] = multiperceptron_widrow(x,yd);
  
end