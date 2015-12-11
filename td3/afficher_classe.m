function afficher_classe(x , y , droite , x1 , echelle , afficheTrace)

     classe1 = [ x(1,find(y == 1 )) ;  x(2,find(y == 1 )) ] ;
     
     classe2 = [ x(1,find(y ~= 1 )) ;  x(2,find(y ~= 1 )) ] ; 
     
          
     plot(
          classe1(1,:) , classe1(2,:) , 'g*' ,
          classe2(1,:)  , classe2(2,:)  , 'b*'
      );
      
     hold on; % Pour dessiner dans la meme figue 
     
     
     n = size(droite,1) ;
    
     if (afficheTrace)
       for i = 2 : n

         plot(x1 , droite(i,:) ,'bk--');
    
       end
     end
    
    plot(x1 , droite(n,:) ,'r');
    
    axis([echelle(1) echelle(2) echelle(3) echelle(4)]); % axes

     
    hold off; % desactivation 
    
    pause(1/10);
    
     
end