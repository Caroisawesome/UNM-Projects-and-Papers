clear
clf
load('../ex6/buchnera_transition', 'transition')
load('../ex6/acid_index_mapping', 'index_map');

[V, D, W] = eig(transition');

x_0 = zeros(21,1);
x_0(1) = 1;

limiting_dist = ((transition')^400)*x_0;

v = V(:,1);

res = limiting_dist./v;

% plot(W));
% hold on ;
% plot(limiting_dist);
% hold on ;

% plot(limiting_dist);

legend("limiting dist", "eiganvector");
bar(limiting_dist);
set(gca,'XTick',[1:length(keys(index_map))])
set(gca,'xticklabel', keys(index_map))
title('Pmf of limiting distribution for Buchnera Amino Acid Sequence');




