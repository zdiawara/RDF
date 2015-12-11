function classe_origine = defineOrigClasse(filename,data)


  if strcmp(filename , 'td3_d1.mat') == 1
  
    classe_origine = [ones(1,50) 2*ones(1,50) 3*ones(1,50) ] ;
  
  elseif strcmp(filename , "td3_d2.mat") == 1
    
    classe_origine = data.orig;
    
  elseif strcmp(filename , "td3_d3a.mat") == 1
    
    classe_origine = [ones(1,20) 2*ones(1,20) 3*ones(1,20) ] ;
    
  elseif strcmp(filename , "td3_d3b.mat") == 1
  
    classe_origine = [ones(1,150) 2*ones(1,150) 3*ones(1,150) ] ;
    
  elseif strcmp(filename , "td3_d4.mat") == 1
  
    classe_origine = [ones(1,70) 2*ones(1,70) 3*ones(1,70) ] ;
    
  else
  
    classe_origine = [ones(1,50) 2*ones(1,50) 3*ones(1,50) ] ;
    
  end

end