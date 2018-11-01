%   xlim([0.06 37000]);
%   ylim([0.1 4240000]);
   set(gca,'YScale','log');
   set(gca,'XScale','log');
 set(gca,'XMinorTick','on');
 set(gca,'YMinorTick','on');
%   %set(gca,'YTick',0:1:3);
%%xt=[0.1 1 10 100 1000 10000];
%  set(gca,'XTick',xt);
set(gca,'YTick',[0.01 0.1 1 10 100 1000 10000 100000 1000000]);
set(gca,'XTick',[1 10 100 1000 10000]);

%  xtt=[-1 0 1 2 3 4];
% xlab=num2str(xtt.','{10}^{%d}');  % TeX label string array of exponential form
% text(xt,-0.05*ones(size(xt)),xlab,'horizontalalign','center')  % and write 
    
set(gca,'ticklength',6.0*get(gca,'ticklength'))
xlabel('$$\mathcal{L}({\textit {\textbf j}}\rightarrow {\textit {\textbf i}})$$','Interpreter','LaTeX','Fontsize',40)
ylabel('${\textbf {\textit T}}({\textit {\textbf j}}\rightarrow {\textit {\textbf i}})$','Interpreter','LaTeX','Fontsize',40)
set(findall(gcf,'-property','FontSize'),'FontName','Times New Roman','FontSize',40,'linewidth',4,'fontweight','b')
set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 700, 700]);
axis square 
%minor_ticks_red
set(legend,'color','none');
set(legend, 'Box', 'off');
hold on;
  

    






    
 %clear all
%set(gcf, 'PaperPositionMode', 'auto');
