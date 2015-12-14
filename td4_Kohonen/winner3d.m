function [q] = winner3d(x , w , K)
  
  diff = [w(1,1,1,1) - x(1) ; w(1,1,1,2) - x(2) ; w(1,1,1,3) - x(3)] ;
        
  u_min = norm(diff)^2;
   
  q = [1;1;1];
  
  for l = 1 : K
           
      for c = 1 : K
      
         for h = 1 : K
         
            diff = [w(l,c,h,1) - x(1) ; w(l,c,h,2) - x(2) ; w(1,1,1,3) - x(3)] ;
          
            u = norm(diff)^2;
      
            if u < u_min 
          
              q = [l ; c ; h];
          
              u_min = u ;
       
            end
          
        end
    
      end
  
  end
  
end