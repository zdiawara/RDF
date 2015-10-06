function affiche_classe(x,clas,g);
clf();
hold on;
coul=['bx';'gx';'rx';'cx';'mx';'yx';'kx'];
for b=1:max(clas),
ind=find(clas==b);
plot(x(1,ind),x(2,ind),coul(b,:));
end;
plot(g(1,:) , g(2,:) , 'bk*');


