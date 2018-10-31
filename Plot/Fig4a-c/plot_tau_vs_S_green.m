%clear all
C_green ={[0.1328 0.5430 0.1328] , [0.4180 0.5547 0.1367 ], [0 0.3960 0],...
[0.5 0.55 0.0], [0.5586 0.7344 0.5586], [102 255 102]./255};
C=C_green;

% userpath('C:\Users\CHITTARANJAN HENS\Desktop\Project_aug_sept_16\Nat_Phys_comment\Data_folder_tau_s_D');
% %  figure(1);
%   load trans_ECO_ER_K_1_D_1_H_1_power_2.mat;

shift=10.0;
[p]=tau_vs_S_green(xx,1,C,shift);
p.Marker = 'o';
p.MarkerSize=15;
hold on;

%  load trans_ECO_K_1_D_1_H_1_power2thetaminus1.mat;
%  shift=5.5;
%   [q]=tau_vs_S_green(xx,2,C,shift);
% q.Marker = 's';
% q.MarkerSize=15;
% hold on;
% 
%  load trans_ECO_K_1_D_1_H_1_power_2_weighted.mat;
%   shift=3.0;
% [t1]=tau_vs_S_green(xx,5,C,shift);
% t1.Marker = 'v';
% t1.MarkerSize=15;
% hold on;
% 
% load trans_ECO_K_1_D_1_H_1_power_2_SF_SFweighted.mat;
%   shift=1.9;
% [t2]=tau_vs_S_green(xx,6,C,shift);
% t2.Marker = '^';
% t2.MarkerSize=15;
% hold on;
% 
% 
%  %load trans_Mutualisticnetwork_pollinator_ECO_K_1_D_1_H_1_power_2.mat;
%  load trans_pollinators_1044nodes_weighted_ECO_K_1_D_1_H_1_power_2.mat;
%  shift=1.2;
%   [r]=tau_vs_S_green(xx,4,C,shift);
% r.Marker = 'd';
% r.MarkerSize=15;
% hold on;
% 
% 
% %load A_Pollinatoir_robertson_agricul_1429nodes_binary.mat;
% load A_Pollinator_robertson_agricul_strong_coonectednodes_weighted.mat;
% 
% 
% load trans_plants_456nodes_ECO_K_1_D_1_H_1_power_2_weighted.mat;
% shift=0.7;
% [s]=tau_vs_S_green(xx,3,C,shift);
% s.Marker = '>';
% s.MarkerSize=12;
% hold on;
% % 
% %  axis_figure_setting_green
% % kk=columnlegend(2,[p q t1 t2 r s],'ER','SF','SF1','SF2','ECO1','ECO2');
% % set(legend,'color','none');
% % set(legend, 'Box', 'off');
% % set(kk,'FontSize',31,'color','none','Box', 'off');
% % text('position',[3.5 3.5],'Interpreter','latex','String','{\boldmath$\theta=-1$}','FontSize',36)
% 
% 
% 
% load Trans_SIS_ER_deg_4_18mar.mat
% shift=8.0;
% [p1]=tau_vs_S_green(xx,2,C,shift);
% p1.Marker = 'o';
% p1.MarkerSize=15;
% hold on
% 
% load Trans_SIS_deg_4_13mar.mat
% shift=4.8;
% [q1]=tau_vs_S_green(xx,1,C,shift);
% q1.Marker = 's';
% q1.MarkerSize=15;
% hold on;
% 
% 
% load trans_weighted_SIS_SF_SIS_31jan.mat;
% shift=2.8;
% [t11]=tau_vs_S_green(xx,5,C,shift);
% t11.Marker = 'v';
% t11.MarkerSize=15;
% hold on;
% 
% load trans_weighted_SIS_theta_SF_SFweighted.mat;
% shift=2.5;
% [t22]=tau_vs_S_green(xx,6,C,shift);
% t22.Marker = '^';
% t22.MarkerSize=15;
% hold on;
% 
% 
% load trans1_SIS_UCI_Online_new.mat;
% shift=2.2;
% [r1]=tau_vs_S_green(xx,3,C,shift);
% r1.Marker = 'd';
% r1.MarkerSize=15;
% hold on;
% 
% load Trans_SIS_Email_network.mat;
% shift=2.1;
% [s1]=tau_vs_S_green(xx,4,C,shift);
% s1.Marker = '>';
% s1.MarkerSize=15;
% hold on;
% 
% load Caluset_data_epinion_trans_SIS.mat;
% xx(:,2)=[];
% shift=1.5;
% [aa]=tau_vs_S_green(xx,2,C,shift);
% aa.Marker = 'p';
% aa.MarkerSize=15;
% hold on;
% 
% load Caluset_data_avogado_trans_SIS.mat;
% shift=1.2;
% xx(:,2)=[];
% [rr]=tau_vs_S_green(xx,1,C,shift);
% rr.Marker = 'h';
% rr.MarkerSize=15;
% hold on;
% 
% 
% %lk=legend([p q t1 t2 r s],'ER','SF','SF1','SF2','PPI1','PPI2');
% %hj=columnlegend(2,[p q t1 t2 r s aa rr],'ER','SF','SF1','SF2','PPI1','PPI2','PPI3','PPI4');
% 
% %%kj=clegend(2,[p1 q1 t11 t22 r1 s1 aa rr],'ER','SF','SF1','SF2','Epinions','ATN');
 axis_setting_green
% % set(legend,'color','none');
% % set(legend, 'Box', 'off');
% %set(kj,'FontSize',28,'color','none','Box', 'off');
% text('position',[3.5 3.5],'Interpreter','latex','String','{\boldmath$\theta=-1$}','FontSize',30)
% 
% % % load trans_SIR_a0.1_b0.3_percent0.9sept18n.mat;
% % % shift=8;
% % % tau_vs_S_green(xx,4,C,shift);
% % % axis_figure_setting
% 
