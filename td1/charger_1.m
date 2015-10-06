function [x , m] = charger_1(filename)
   x = dlmread(filename);
   m = metrique(x);
end