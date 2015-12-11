function [y]=multiperceptron(x,w1,w2)
  
  for i = 1 : size(w1,2) 
    
    y1(i) = perceptron_simple(x , w1(:,i) , 2);
    
  end
  
  y = perceptron_simple(y1' , w2 , 2);
  
end 