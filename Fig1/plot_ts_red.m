load trans_R_1_2_3_h_1_alpha0.5_node5.mat;
[p]=bar(1,xx(1),'r');
hold on;
[q]=bar(2,xx(2),'r');
hold on;
[r]=bar(3,xx(3),'r');
hold on;
[s]=bar(4,xx(4),'r');
hold on;
ylabel('${\textbf {\textit T}}({\textit {\textbf j}}\rightarrow {\textit {\textbf i}})$','Interpreter','LaTeX','Fontsize',40)
xlabel('$i$','Interpreter','LaTeX','Fontsize',40);
set(gca,'XTick',[ 1 2 3 4 ]);
set(findall(gcf,'-property','FontSize'),'FontName','Times New Roman','FontSize',40,'linewidth',5,'fontweight','b')
%clear all
set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 700, 700]);
axis square;




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
clear
load dt_pert_R_1_2_3_h_1_alpha0.5_node5.mat;
C_red ={[ 0.8008  0.3594  0.3594] ,  [0.9102    0.5859    0.4766], [ 1 0 0], [255 102 102]./255,[0.5430   0  0], [255 153 153]./255};
%%C_blue ={[ 0 0 0.543] ,  [0.2539 0.4101 0.8789 ],[ 0 0 0.8],   [0.3906 0.5820 0.9258] ,[0 0 1]};
C=C_red;
target1=1;
target2=2;
target3=3;
target4=4;
dt_pert=dt_pert1(:,2:end);
tend=1400;
[p]=plot(dt_pert1(1:tend,1),(dt_pert(1:tend,target1)-dt_pert(1,target1)) ...
    ./(dt_pert(end,target1)-dt_pert(1,target1)),...
  'Color',C{5},'linewidth',3);
hold on;
[q]=plot(dt_pert1(1:tend,1),(dt_pert(1:tend,target2)-dt_pert(1,target2)) ...
    ./(dt_pert(end,target2)-dt_pert(1,target2)),'Color',C{6},'linewidth',3);
hold on;
[r]=plot(dt_pert1(1:tend,1),(dt_pert(1:tend,target3)-dt_pert(1,target3)) ...
    ./(dt_pert(end,target3)-dt_pert(1,target3)),...
    'Color',C{3},'linewidth',3);
hold on;
[s]=plot(dt_pert1(1:tend,1),(dt_pert(1:tend,target4)-dt_pert(1,target4)) ...
    ./(dt_pert(end,target4)-dt_pert(1,target4)),'Color',C{1},'linewidth',3);
hold on;
%legend([p q ],'1','2');
% set(legend,'color','none');
% set(legend, 'Box', 'off');
% %  plot(dt_pert1(hlf_ind,1),dt_pert1(hlf_ind,target),'*', 'MarkerSize',12,...
% %     'MarkerEdgeColor','red',...
% %       'markerfacecolor','red');
% % axis([0 25 min(dt_pert1(:,target)) max(dt_pert1(:,target))])
% %  xE=dt_pert1(hlf_ind,1); 
% %  yE=dt_pert1(hlf_ind,target);
% % %  % the equilibrium point
% %  plot(xE, yE, 'k.', 'markersize', 20)
% %  hold on; 
% %  plot([xE xE],[0 yE],'--');
% %   hold on; 
% %   plot([0 xE],[yE yE],'--');
%axis_figure_setting_red
hj=legend([p q  r s],'1', '2', '3','4');
%box('off')
%axis('off')
set(gca,'XScale','log');
set(gca,'XMinorTick','on');
 set(gca,'YMinorTick','on');
 set(gca,'XTick',[1 10 100 1000]);

 set(gca,'ticklength',6.0*get(gca,'ticklength'));
 set(findall(gcf,'-property','FontSize'),'FontName','Times New Roman','FontSize',34,'linewidth',4,'fontweight','b')
%      xlabel('$\textbf{Network}$','Interpreter','LaTeX','FontSize',36)
xlabel('$t$','Interpreter','LaTeX','FontSize',36,'fontweight','b')
     % ylabel('$\tau_{_i}$','Interpreter','LaTeX','FontSize',32)
ylabel('$\Delta x_i (t)$','Interpreter','LaTeX','FontSize',36,'fontweight','b')
% set(gca,'YTickLabel',[]);
% set(gca,'XTickLabel',[]);
% set(gca,'xtick',[])
% set(gca,'ytick',[])
set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 500, 500]);
set(findall(gcf,'-property','FontSize'),'FontName','Times New Roman','FontSize',40,'linewidth',4,'fontweight','b')
%text('position',[100 0.5],'Interpreter','latex','String','{\boldmath$\theta=0$}','FontSize',36);
set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 700, 700]);
axis square 
%minor_ticks_red
set(legend,'color','none');
set(legend, 'Box', 'off');
axis tight
hold on;