function axis_figure_setting(f)
ax = findobj(f,'Type','Axes');
h = get(0,'children');
% set(gca,'YScale','log');
   
%    set(gca,'XMinorTick','on');
%    set(gca,'YMinorTick','on');
%      set(gca,'YTick', [1 10 100]);
%        set(gca,'XTick',[0.1 1 10 100]);
         set(gca,'ticklength',5.0*get(gca,'ticklength'))
for i=1:length(ax)
     set(gca,'XScale','log');
 xlabel(ax(i),'$\textbf{\textit T}$','Interpreter','LaTeX','FontSize',34)
     % ylabel('$\tau_{_i}$','Interpreter','LaTeX','FontSize',32)
 ylabel(ax(i),'$\textbf{\textit {P(T)}}$','Interpreter','LaTeX','FontSize',34)
        %   title(ax(i,1),{'MM'})
%    str1 = '\Theta=0';
%  annotation('textbox','String',str1,'FitBoxToText','on','Edgecolor','white');
end
%  set(findall(gcf,'-property','FontSize'),'FontSize',36,'linewidth',3)
%  axis tight;
set(gca,'XScale','log');
set(findall(gcf,'-property','FontSize'),'FontName','Times New Roman','FontSize',40,'linewidth',5,'fontweight','b')   
set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 700, 700]);
%axis square 
%minor_ticks_red
set(legend,'color','none');
set(legend, 'Box', 'off');
hold on; 
%clear all
