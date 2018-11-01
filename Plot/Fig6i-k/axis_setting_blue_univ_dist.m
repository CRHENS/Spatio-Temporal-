%  ylim([0.8 30])
%  xlim([0.0 12.5])
 %set(gca,'FontSize',36,'FontWeight','bold','linewidth',4);
  %set(gca,'FontSize',36);
%    set(gca,'YScale','log');
%    set(gca,'XScale','log');
%     set(gca,'XMinorTick','on');
%     set(gca,'YMinorTick','on');
 set(gca,'YTick',[5 10 15 20 25 30]);
 set(gca,'XTick',[0 5 10 ]);
   % set(gca,'YTick',[0.001  0.01 0.1 1 10]); %% negative
    % set(gca,'YTick',[0.1  1 10]);
    % set(gca,'ticklength',3.0*get(gca,'ticklength'))%set(gca,'XTick',[0 5 10 15]);
set(gca,'ticklength',4.0*get(gca,'ticklength'))
xlabel('$$\mathcal{L}({\textit {\textbf j}}\rightarrow {\textit {\textbf i}})$$','Interpreter','LaTeX','Fontsize',40)
ylabel('${\textbf {\textit T}}({\textit {\textbf j}}\rightarrow {\textit {\textbf i}})$','Interpreter','LaTeX','Fontsize',40)
set(findall(gcf,'-property','FontSize'),'FontName','Times New Roman','FontSize',40,'linewidth',5,'fontweight','b')
%clear all
set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 700, 700]);
axis square 
x_end=12.5; y_end=30;
%%minor_ticks_blue(x_end, y_end)
set(legend,'color','none');
set(legend, 'Box', 'off');
hold on;
      
    
 %clear all
%set(gcf, 'PaperPositionMode', 'auto');
