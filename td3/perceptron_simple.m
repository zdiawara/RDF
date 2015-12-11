function [y] = perceptron_simple(x , w , active)

  u = emissionInflux(x,w);

  y = phi(u,active);

end 

function [u] = emissionInflux(x,w)
  
  y = [1;x];
  
  n = length(y);
  
  u = 0;
  
  for i = 1 : n
    
    u = u + y(i)*w(i);
  
  end
  
end  

function [r] = phi(u,active)

  if active == 0
  
     if u >= 0 
        r = 1;
     else
        r = -1 ;
     end 
     
  elseif active == 1 
  
     r = tanh(u);
  
  else % active = 2
    
    r = inverse(1 + exp(-u)) ;
  
  end
  
end  