function [x m clas] = initialiser()
    
    
    % Genration des individus
    
    nk = 128;
    
    x1=[randn(1,nk)+4;randn(1,nk)+4];

    x2=[randn(1,nk)*2-4;randn(1,nk)*2-4];

    x3=[randn(1,nk);randn(1,nk)];
    
    x = [x1 x2 x3 ]; % Contient tous les individus 
    
    m = metrique(x);   % Metrique 
       
    
   for i = 1 : 3
    
        l = i*nk;
        k = l-nk+1; 
        for j = k : l
            clas(j) = i;
        end
        k = k - 1;
   end
    
    
end









