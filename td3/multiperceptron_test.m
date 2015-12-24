function [y] = multiperceptron_test()
   
  w1_1 = [-0.5 2 -1]';
  
  w1_2 = [0.5 1 0.5]';
    
  w1 = [ w1_1  ,  w1_2 ] ;

  w2 = [2 -1 1]'; 
  
  x = [0 0]'; 
  
  y = multiperceptron(x,w1,w2);
  
end