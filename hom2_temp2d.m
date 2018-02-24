function hom2_temp2d(fig,xlbl,ylbl,ttl)
clr=0.96;
clrT='black';

fig.Color=[clr clr clr];
set(fig.CurrentAxes,'Color',[clr clr clr],'XColor',clrT,'YColor',clrT);
set(fig.CurrentAxes,'LineWidth',1.5,'FontSize',17);
xlabel(xlbl,'FontSize',30,'FontWeight','bold','Color',clrT,'Interpreter','latex');
ylabel(ylbl,'FontSize',25,'FontWeight','bold','Color',clrT,'Interpreter','latex');

if nargin==4
    title(ttl,'FontSize',30,'FontWeight','bold','Color',clrT,'Interpreter','latex');
end