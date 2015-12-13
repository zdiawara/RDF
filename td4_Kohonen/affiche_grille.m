function affiche_grille(w)
hold on

for b=1:size(w,1),
  t=w(b,:,:);
  plot(t(1,:,1),t(1,:,2),'r');
end;

for b=1:size(w,2),
  t=w(:,b,:);
  plot(t(:,1,1),t(:,1,2),'r');
end;

