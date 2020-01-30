load('buchnera.mat')

bar( cell2mat( values(c) ) )
set(gca,'XTick',[1:length(keys(c))])
set(gca,'xticklabel', keys(c))
title("Buchnera Amino Acid Histogram")