function visualiser(filename)
  x = x = dlmread(filename);
  plot( x(1 , :) , x( 2 , :) , 'r*');
end