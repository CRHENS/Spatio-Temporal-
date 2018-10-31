
C_red ={[ 0.8008  0.3594  0.3594] ,  [0.9102    0.5859    0.4766], [ 1 0 0], [255 102 102]./255,[0.5430   0  0], [255 153 153]./255};
%%C_blue ={[ 0 0 0.543] ,  [0.2539 0.4101 0.8789 ],[ 0 0 0.8],   [0.3906 0.5820 0.9258] ,[0 0 1]};
C=C_red;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%f=figure(3);
 shift=1;
% userpath('C:\Users\CHITTARANJAN HENS\Desktop\Project_aug_sept_16\Nat_Phys_comment\Data_folder_tau_s_D');
% load trans_MM_ER_h_0.2_alpha0.4_theta_1PT5.mat;
[p]=tau_vs_S_red(xx,2,C,shift);
p.Marker = 'o';
p.MarkerSize=15;
hold on;

% shift=15.6;
% load trans_MM_h_0.2_alpha0.4_theta1pt5_newaug28.mat
% [q]=tau_vs_S_red(xx,1,C,shift);
% q.Marker = 's';
% q.MarkerSize=15;
% hold on;
% 
% load trans_MM_h_0.6_alpha0.4_theta1pt5_weighted.mat;
% shift=9.1;
% [t1]=tau_vs_S_red(xx,5,C,shift);
% t1.Marker = 'v';
% t1.MarkerSize=15;
% hold on;
% 
% load trans_MM_h_0.2_alpha0.4_SF_SFweighted.mat;
% shift=3.4;
% [t2]=tau_vs_S_red(xx,6,C,shift);
% t2.Marker = '^';
% t2.MarkerSize=15;
% hold on;
% 
% 
% load trans_MM_Yeast_pt3_h_0.2_alpha0.4_theta_1pt5_24aug.mat;
% shift=2.1;
% [r]=tau_vs_S_red(xx,3,C,shift);
% r.Marker = 'd';
% r.MarkerSize=15;
% 
% hold on;
% 
% load trans_MM_human_ppi_pt3_h_0.2_alpha0.4_theta_25aug.mat;
% shift=0.9;
% [s]=tau_vs_S_red(xx,4,C,shift);
% s.Marker = '>';
% s.MarkerSize=15;
% hold on;
% 
% load trans_Arabidopsis_matrix_SF_MM_h0.2_alpha10.4_N2938_eta0.7_upd.mat;
% xx(:,2)=[];
% shift=0.8;
% [aa]=tau_vs_S_red(xx,2,C,shift);
% aa.Marker = 'p';
% aa.MarkerSize=15;
% hold on;
% 
% load trans_rattus_arenas_SF_MM_h0.2_alpha10.4_N2350_eta0.7_updn.mat;
% shift=0.7;
% xx(:,2)=[];
% [rr]=tau_vs_S_red(xx,1,C,shift);
% rr.Marker = 'h';
% rr.MarkerSize=15;
% hold on;
% 
% 
% %lk=legend([p q t1 t2 r s],'ER','SF','SF1','SF2','PPI1','PPI2');
% %hj=clegend(2,[p q t1 t2 r s aa rr],'ER','SF','SF1','SF2','PPI1','PPI2','PPI3','PPI4');
 axis_setting_red
% % set(legend,'color','none');
% % set(legend, 'Box', 'off');
% %set(hj,'FontSize',11,'color','none','Box', 'off');
% text('position',[30.5 30.5],'Interpreter','latex','String','{\boldmath$\theta=\frac{3}{2}$}','FontSize',42)
% 
% 
% 
% 
