function affiche_classe(x,clas);

  hold on;
  
  for b=1:max(clas),
  
    ind=find(clas==b);
  
    plot(x(1,ind),x(2,ind),'color' , rand(1,3) , '*');
  
  end

end;
