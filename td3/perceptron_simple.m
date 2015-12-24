function [y] = perceptron_simple(x , w , active)

  %u = emissionInflux(x,w);
  
  u = dot(w,[1;x]);

  y = phi(u,active);

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