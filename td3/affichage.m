function y = affichage()
  
  x = [0 1 0 1 ; 0 0 1 1];
  
  n = length(x);
  
  y = [] ;
  
  w = [-0.5 ; 1 ; 1];
  
  for i = 1 : n
  
    y(i) = perceptron_simple(x(:,i) , w , 0);

  end

  x1 = 0 : 1;

  x2 = 0.5 - x1;

  plot( x(1,:) , x(2,:) , 'rx' , x1 , x2) 

end