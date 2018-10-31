 
% ax = findobj(f,'Type','Axes');
% h = get(0,'children');
% for i=1:length(ax)
  
        %   title(ax(i,1),{'MM'})
%    str1 = '\Theta=0';
%  annotation('textbox','String',str1,'FitBoxToText','on','Edgecolor','white');
 y_end=2000;
 x_end=8.5;
%xlim([1 10000])
xlim([0.0  x_end])
ylim([19 y_end])
%ylim([0.0009 10])
%end

 %set(gca,'FontSize',36,'FontWeight','bold','linewidth',4);
  %set(gca,'FontSize',36);
   set(gca,'YScale','log');
   %  set(gca,'YScale','log');
  %   set(gca,'XScale','log');
 % set(gca,'XMinorTick','on');
    set(gca,'YMinorTick','on');
   % set(gca,'YMinorTick','on');
 
     set(gca,'XTick',[0 3 6 9]);
    % set(gca,'ticklength',8.0*get(gca,'ticklength'))
      set(gca,'YTick',[10 100 1000 10000]);
      set(gca,'ticklength',4.0*get(gca,'ticklength'))
   
%%minor_ticks_red_MM_PD(x_end,y_end)
    
set(findall(gcf,'-property','FontSize'),'FontName','Times New Roman','FontSize',40,'linewidth',5,'fontweight','b')
   xlabel('$\textbf{\textit{L}}_\textbf{\textit{ij}}$','Interpreter','LaTeX','FontSize',40)
     % ylabel('$\tau_{_i}$','Interpreter','LaTeX','FontSize',32)
      ylabel('$\textbf{\textit {T(j}}\rightarrow\textbf{\textit{i}} ) $','Interpreter','LaTeX','FontSize',40)

set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 700,700]);
axis square 
%minor_ticks_red
set(legend,'color','none');
set(legend, 'Box', 'off');
hold on;

%  curticks = get(gca, 'YTick');
%  set(gca, 'YTickLabel', cellstr( num2str((1e-3* curticks(:)) ) ) )