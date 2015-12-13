function affiche_classe(x,clas)
   clf;
  hold on;
  
  for b=1:max(clas),
  
    ind=find(clas==b);
  
    plot( x(1,ind) , x(2,ind),'*','Color',rand(1,3));
  
  end

end
