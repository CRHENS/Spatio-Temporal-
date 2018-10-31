 
% ax = findobj(f,'Type','Axes');
% h = get(0,'children');
% for i=1:length(ax)
%   title(ax(i,1),{'MM'})
%    str1 = '\Theta=0';
%  annotation('textbox','String',str1,'FitBoxToText','on','Edgecolor','white');
%  xlim([0.0 10])
% ylim([0.0 3.0])
xlim([0.0 8.5])
ylim([0.0 2.5])

%end
 %set(gca,'FontSize',36,'FontWeight','bold','linewidth',4);
  %set(gca,'FontSize',36);
  % set(gca,'YScale','log');
   %  set(gca,'YScale','log');
  %   set(gca,'XScale','log');
 % set(gca,'XMinorTick','on');
   % set(gca,'YMinorTick','on');
   % set(gca,'YMinorTick','on');
  %set(gca,'YTick',0:1:3);

%   set(gca,'YTick',[0.001  0.01 0.1 1 10]); %% negative
%      set(gca,'YTick',[0 1 2]);
  set(gca,'YTick',[0 1 2]);
    
     set(gca,'XTick',[0 3 6 9]);  
%      set(gca,'XTick',[0 1 2]);
      set(gca,'ticklength',4.0*get(gca,'ticklength'))
set(findall(gcf,'-property','FontSize'),'FontName','Times New Roman','FontSize',40,'linewidth',5,'fontweight','b')
xlabel('$\textbf{\textit{L}}_\textbf{\textit{ij}}$','Interpreter','LaTeX','FontSize',40)
     % ylabel('$\tau_{_i}$','Interpreter','LaTeX','FontSize',32)
ylabel('$\textbf{\textit {T(j}}\rightarrow\textbf{\textit{i}} ) $','Interpreter','LaTeX','FontSize',40)
set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 700, 700]);
axis square 
set(legend,'color','none');
set(legend, 'Box', 'off');
hold on;
%minor_ticks_green
legend  off
%  curticks = get(gca, 'YTick');
%  set(gca, 'YTickLabel', cellstr( num2str((1e-3* curticks(:)) ) ) )