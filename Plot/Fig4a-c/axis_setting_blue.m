xlim([0.01 800])
ylim([0.1 52])
   set(gca,'YScale','log');
   set(gca,'XScale','log');
   set(gca,'XMinorTick','on');
   set(gca,'YMinorTick','on');
     set(gca,'YTick', [1 10]);
       set(gca,'XTick',[0.1 1 10 100]);
         set(gca,'ticklength',5.0*get(gca,'ticklength'))
 %axis tight;
 %  xlabel({'\it{\tau_{\it i}}'},'FontSize',36)
%     ylabel({'P(\tau)'},'FontSize',36,'FontWeight','bold')
    
set(findall(gcf,'-property','FontSize'),'FontName','Times New Roman','FontSize',40,'linewidth',5,'fontweight','b')   
 xlabel('${\textbf{\textit S}}_{\textbf{\textit{i}}}$','Interpreter','LaTeX','FontSize',54)
ylabel('\boldmath$\tau_{\textbf{\textit i}}$','Interpreter','LaTeX','FontSize',64) 
%clear all
set(gcf, 'PaperPositionMode', 'auto','position', [0, 0,750, 750]);
%axis square 
%minor_ticks_red
% set(legend,'color','none');
% set(legend, 'Box', 'off');
hold on;
