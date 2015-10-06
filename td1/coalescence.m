% x contient les differents individus de l'apprentissage
% K nombre de classe a obtenir 
% M la metrique
% g centre de gravités initiaux 


function [clas,g2] = coalescence( x, k , m , g )
       
    convergence = false; 
    
    while ~convergence % On arrete dès qu'il ya convergence
        
        %construction des partitions
        
        for i = 1 : size( x , 2) % Parcours de l'ensemble des individus
            
            data = [] ;    
            
            for j = 1 : size(g , 2)                % Parcours des centres de gravites , calculer des distances min pour determiner la classe de l'individu
                data(j) = ( x(1,i) - g(1,j) )^2 * m(1,1) + ( x(2,i) - g(2,j) )^2 * m(2,2); 
            end  
                        
            clas(i) = find( data == min(data) )(1)  ;          
  
        end % A la fin, nous obtenons un regroupement des individus par classe 
        
        
        %Calcul des nouveuax centres de gravités
            
        for numero_classe = 1 : k     
            y = find(clas==numero_classe);
            if length(y) ~= 0 
                g2( 1 , numero_classe ) = mean( x(1 , y) ) ;  % Moyenne des mesures
                g2( 2 , numero_classe ) = mean( x(2 , y) ) ;  % 
            end
        end

        if size(g2 , 2) == size(g , 2)
            
           if g2 == g % alors il y'a convergence
              
               convergence = true ;
           
            end
                
       end

       g = g2;
       
    end
    
end

    