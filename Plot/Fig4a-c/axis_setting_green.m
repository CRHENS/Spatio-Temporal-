 
  
xlim([0.1 1200])

ylim([0.001 11])

%end

 %set(gca,'FontSize',36,'FontWeight','bold','linewidth',4);
  %set(gca,'FontSize',36);
   set(gca,'YScale','log');
   set(gca,'XScale','log');
   set(gca,'XMinorTick','on');
   set(gca,'YMinorTick','on');
  %set(gca,'YTick',0:1:3);
%  set(gca,'YTick',[10 100 1000 10000]);
 %   set(gca,'YTick',[0.001  0.01 0.1 1 10]); %% negative
     set(gca,'YTick',[0.001 0.01 0.1 1.0]);
       set(gca,'XTick',[1 10 100]);
set(gca,'ticklength',5.0*get(gca,'ticklength'))
  
 %axis tight;
 %  xlabel({'\it{\tau_{\it i}}'},'FontSize',36)
%     ylabel({'P(\tau)'},'FontSize',36,'FontWeight','bold')
    
   
 set(findall(gcf,'-property','FontSize'),'FontName','Times New Roman','FontSize',40,'linewidth',5,'fontweight','b')   
 xlabel('${\textbf{\textit S}}_{\textbf{\textit{i}}}$','Interpreter','LaTeX','FontSize',54)
ylabel('\boldmath$\tau_{\textbf{\textit i}}$','Interpreter','LaTeX','FontSize',64) 
%clear all
set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 750, 750]);
%axis square 
%minor_ticks_red
% set(legend,'color','none');
% set(legend, 'Box', 'off');
hold on;
