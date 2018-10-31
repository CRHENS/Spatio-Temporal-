%%clear
%%load ('dt_pert_MM_6000_h_1_alpha1_node1.mat');
%load('ll_UCI_node1.mat')
load trans_R_1_2_3_h_0.5_alpha3_node5.mat;
[p]=bar(1,xx(1),'g');
hold on;
[q]=bar(2,xx(2),'g');
hold on;
[r]=bar(3,xx(3),'g');
hold on;
[s]=bar(4,xx(4),'g');
hold on;
ylabel('${\textbf {\textit T}}({\textit {\textbf j}}\rightarrow {\textit {\textbf i}})$','Interpreter','LaTeX','Fontsize',40)
xlabel('$i$','Interpreter','LaTeX','Fontsize',40);
set(gca,'XTick',[ 1 2 3 4 ]);
set(findall(gcf,'-property','FontSize'),'FontName','Times New Roman','FontSize',40,'linewidth',5,'fontweight','b')
%clear all
set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 700, 700]);
axis square;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
load dt_pert_R_1_2_3_h_0.5_alpha3_node5.mat;
C_green ={[0.1328 0.5430 0.1328] , [0.4180 0.5547 0.1367 ], [0 0.3960 0],...
[0.5 0.55 0.0], [0.5586 0.7344 0.5586], [102 255 102]./255};
C=C_green;
target1=1;
target2=2;
target3=3;
target4=4;
dt_pert=dt_pert1(:,2:end);
tend=700;
[p]=plot(dt_pert1(1:1:tend,1),(dt_pert(1:1:tend,target1)-dt_pert(1,target1)) ...
    ./(dt_pert(end,target1)-dt_pert(1,target1)),...
    'Color',C{4},'linewidth',3);
hold on;
[q]=plot(dt_pert1(1:1:tend,1),(dt_pert(1:1:tend,target2)-dt_pert(1,target2)) ...
    ./(dt_pert(end,target2)-dt_pert(1,target2)),'Color',C{2},'linewidth',3);
hold on;
[r]=plot(dt_pert1(1:1:tend,1),(dt_pert(1:1:tend,target3)-dt_pert(1,target3)) ...
    ./(dt_pert(end,target3)-dt_pert(1,target3)),...
    'Color',C{6},'linewidth',3);
hold on;
[s]=plot(dt_pert1(1:1:tend,1),(dt_pert(1:1:tend,target4)-dt_pert(1,target4)) ...
    ./(dt_pert(end,target4)-dt_pert(1,target4)),'Color',C{5},'linewidth',3);
hold on;
hj=legend([p q  r s],'1', '2', '3','4');
%box('off')
%axis('off')
set(gca,'XScale','log');
set(gca,'XMinorTick','on');
 set(gca,'YMinorTick','on');
 set(gca,'XTick',[0.01 0.1 1 10 100]);

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