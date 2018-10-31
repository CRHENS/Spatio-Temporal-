
%%% clear all
C_blue ={[ 0 0 0.543] ,  [0.2539 0.4101 0.8789 ],[ 0 0 0.8],   [0.3906 0.5820 0.9258] ,[0 0 1], [153 153 255]./255};
C=C_blue;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%userpath('C:\Users\CHITTARANJAN HENS\Desktop\Project_aug_sept_16\Nat_Phys_comment\Data_folder_tau_s_D');

% load trans_MM_ER_h_1_alpha1_theta.mat;
 shift=1;
[p]=tau_vs_S_blue(xx,2,C,shift);
p.Marker = 'o';
p.MarkerSize=15;
hold on;

% load trans_MM_h_1_alpha1_theta__zero.mat
% shift=11.6;
% [q]=tau_vs_S_blue(xx,1,C,shift);
% q.Marker = 's';
% q.MarkerSize=15;
% hold on;
% 
% load trans_MM_h_1_alpha1_thetazero_weightednew.mat;
% shift=11.0;
% [t1]=tau_vs_S_blue(xx,5,C,shift);
% t1.Marker = 'v';
% t1.MarkerSize=15;
% hold on;
% 
% load trans_MM_h_1_alpha1_SF_SFweighted.mat;
% shift=10.5;
% [t2]=tau_vs_S_blue(xx,6,C,shift);
% t2.Marker = '^';
% t2.MarkerSize=15;
% hold on;
% 
% 
% load trans_MM_Yeast_h_1_alpha1_theta_new.mat;
% shift=10;
% [r]=tau_vs_S_blue(xx,3,C,shift);
% r.Marker = 'd';
% r.MarkerSize=15;
% hold on;
% 
% load trans_MM_human_ppi_pt3_h_1_alpha1_theta_new.mat;
% shift=9.5;
% [s]=tau_vs_S_blue(xx,4,C,shift);
% s.Marker = '>';
% s.MarkerSize=15;
% hold on;
% 
% load trans_Arabidopsis_matrix_SF_MM_h1_alpha11_N2938_eta0.7_upd.mat;
% xx(:,2)=[];
% shift=8;
% [aa]=tau_vs_S_blue(xx,2,C,shift);
% aa.Marker = 'p';
% aa.MarkerSize=15;
% hold on;
% 
% load trans_rattus_arenas_SF_MM_h1_alpha11_N2350_eta0.7_updn.mat;
% shift=7.5;
% xx(:,2)=[];
% [rr]=tau_vs_S_blue(xx,1,C,shift);
% rr.Marker = 'h';
% rr.MarkerSize=15;
% hold on;
% 
% load trans_NN_g0.5_s2.5_N998_perb0.1_B2_alpha1_weighted_brain_net.mat;
% shift=7.0;
% xx(:,4)=[];
% [bb]=tau_vs_S_blue(xx,1,C,shift);
% bb.Marker = 'h';
% bb.MarkerSize=15;
% hold on;
% 
% %lk=legend([p q t1 t2 r s],'ER','SF','SF1','SF2','PPI1','PPI2');
% %lk=columnlegend(2,[p q t1 t2 r s aa rr],'ER','SF','SF1','SF2','PPI1','PPI2','PPI3','PPI4');
% 
% 
% % axis_figure_setting_blue
% % set(legend,'color','none');
% % set(legend, 'Box', 'off');
% % set(lk,'FontSize',40,'color','none','Box', 'off');
% % text('position',[3.5 3.5],'Interpreter','latex','String','{\boldmath$\theta=0$}','FontSize',36);
% 
% load trans_NN_g0.3_s2.5_N6000_perb0.1_B2_alpha1_ER.mat;
% shift=15;
% [p1]=tau_vs_S_blue(xx,2,C,shift);
% p1.Marker = 'o';
% p1.MarkerSize=15;
% hold on;
% 
% %load trans_PD_a_0.25_b_1_theta.mat;
% 
% load trans_NN_g0.3_s2.5_N6000_perb0.1_B3_alpha1_SF_Bin.mat;
% shift=12;
% index=find(xx(:,3)<20);
% [q1]=tau_vs_S_blue(xx(index,:),1,C,shift);
% q1.Marker = 's';
% q1.MarkerSize=15;
% hold on;
% 
% load trans_NN_g0.3_s2.5_N6000_perb0.1_B2_alpha1_SF_weightedn.mat;
% shift=8;
% [t11]=tau_vs_S_blue(xx,5,C,shift);
% t11.Marker = 'v';
% t11.MarkerSize=15;
% hold on;
% 
% 
% load trans_NN_g0.3_s2.5_N6000_perb0.1_B2_alpha1_SF_SFweightedn.mat;
% shift=5;
% [t22]=tau_vs_S_blue(xx,6,C,shift);
% t22.Marker = '^';
% t22.MarkerSize=15;
% hold on;
% 
% load trans_NN_g0.5_s2.5_N998_perb0.1_B2_alpha1_weighted_brain_net.mat;
% shift=3;
% [r11]=tau_vs_S_blue(xx,3,C,shift);
% r11.Marker = 'h';
% r11.MarkerSize=15;
% hold on;
% 
% %kk= columnlegend(2,[p1 q1 t11 t22 r11], 'ER','SF','SF1','SF2','Brain');
 axis_setting_blue
% % set(legend,'color','none');
% % set(legend, 'Box', 'off');
% %set(kk,'FontSize',40,'color','none','Box', 'off');
% text('position',[3.5 3.5],'Interpreter','latex','String','{\boldmath$\theta=0$}','FontSize',36)
% 
% 
% 
% 
% 
% % f=figure(6);
% % load trans_PD_ER_a_0.25_b_1_theta.mat
% % shift=12;
% % [p1]=tau_vs_S_blue(xx,2,C,shift);
% % p1.Marker = 'o';
% % p1.MarkerSize=15;
% % hold on;
% % 
% % load trans_PD_a_0.25_b_1_theta.mat
% % shift=10.9;
% % [q1]=tau_vs_S_blue(xx,1,C,shift);
% % q1.Marker = 's';
% % q1.MarkerSize=15;
% % hold on;
% % 
% % load trans_PD_a_0.25_b_1_theta_weighted.mat
% % shift=8.6;
% % [t11]=tau_vs_S_blue(xx,5,C,shift);
% % t11.Marker = 'v';
% % t11.MarkerSize=15;
% % hold on;
% % 
% % load trans_PD_a_0.25_b_1_theta_SF_SFweighted.mat;
% % shift=7.4;
% % [t22]=tau_vs_S_blue(xx,6,C,shift);
% % t22.Marker = '^';
% % t22.MarkerSize=15;
% % hold on;
% % 
% % load trans_PD_a_0.25_b_1_N1044_ECO1.mat;
% % shift=3;
% % [r11]=tau_vs_S_blue(xx,3,C,shift);
% % r11.Marker = 'd';
% % r11.MarkerSize=15;
% % hold on;
% % 
% % load trans_PD_a_0.25_b_1_N456_ECO2.mat;
% % shift=2.2;
% % [s11]=tau_vs_S_blue(xx,4,C,shift);
% % s11.Marker = 's';
% % s11.MarkerSize=15;
% % hold on;
% % 
% % 
% % %kk=legend([p1 q1 t11 t22],'ER','SF','SF1','SF2');
% % kk= columnlegend(2,[p1 q1 t11 t22 r11 s11], 'ER','SF','SF1','SF2','ECO1','ECO2');
% % axis_figure_setting_blue
% % set(legend,'color','none');
% % set(legend, 'Box', 'off');
% % set(kk,'FontSize',40,'color','none','Box', 'off');
% % text('position',[3.5 3.5],'Interpreter','latex','String','{\boldmath$\theta=0$}','FontSize',36)
% 
% 
% 
