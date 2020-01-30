function [] = save_plot(gcf, filename)
%SAVE_PLOT Summary of this function goes here
%   Detailed explanation goes here
h = gcf;
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
cd figures;
print(gcf, '-dpdf', '-r300', strcat(filename,'.pdf'))
cd ../
end

