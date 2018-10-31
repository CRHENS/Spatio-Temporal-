clear
C_blue ={[ 0 0 0.543] ,  [0.2539 0.4101 0.8789 ],[ 0 0 0.8],   [0.3906 0.5820 0.9258] ,[0 0 1], [153 153 255]./255};
C_red ={[ 0.8008  0.3594  0.3594] ,  [0.9102    0.5859    0.4766], [ 1 0 0], [255 102 102]./255,[0.5430   0  0], [255 153 153]./255};
C_green ={[0.1328 0.5430 0.1328] , [0.4180 0.5547 0.1367 ], [0 0.3960 0],...
[0.5 0.55 0.0], [0.5586 0.7344 0.5586], [102 255 102]./255};
%%%%%%%%%%Green Case%%%%%%%%%%%%
C=C_green;
 figure(1);
userpath('C:\Users\CHITTARANJAN HENS\Desktop\Project_aug_sept_16\Nat_Phys_comment\Data_folder_tau_s_D');
load trans_ECO_ER_K_1_D_1_H_1_power_2.mat
shift=0;
[p]=T_vs_D_linbin(xx,5,C_green,shift*1);
p.Marker = 'o';
p.MarkerSize=15;
load trans_ECO_K_1_D_1_H_1_power2thetaminus1.mat;
[r]=T_vs_D_linbin(xx,5,C_green,shift*2);
r.Marker = 's';
r.MarkerSize=15;
 legend([r p],'SF','ER','Location','northwest','Orientation','vertical');
hold on
load Trans_SIS_ER_deg_4_18mar.mat
[q]=T_vs_D_linbin(xx,6,C_green,shift*1.1);
q.Marker = 'o';
q.MarkerSize=15;

load Trans_SIS_deg_4_13mar.mat
[s1]=T_vs_D_linbin(xx,6,C_green,shift*2.1);
s1.Marker = 's';
s1.MarkerSize=15;

axis_setting_green_E_M
legend([s1 q],'SF','ER','Location','northwest','Orientation','vertical');

set(legend,'color','none');
set(legend, 'Box', 'off');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%Red Case%%%%%%%%%%%%%%%%
figure;
shift=0;
load trans_MM_ER_h_0.2_alpha0.4_theta_1PT5.mat;
[p1]=T_vs_D_linbin(xx,3,C_red,shift*1);
p1.Marker = 'o';
p1.MarkerSize=15;
load trans_MM_h_0.2_alpha0.4_theta1pt5_newaug28.mat
[r1]=T_vs_D_linbin(xx,3,C_red,shift*3);
r1.Marker = 's';
r1.MarkerSize=15;
hold on;
load trans_PD_ER_a_0.2_b_0.5_theta.mat
[q1]=T_vs_D_linbin(xx,6,C_red,shift*2);
q1.Marker = 'o';
q1.MarkerSize=15;
load trans_PD_a_0.2_b_0.5_theta.mat
[s1]=T_vs_D_linbin(xx,6,C_red,shift*4);
s1.Marker = 's';
s1.MarkerSize=15;
axis_setting_red_R2_P
legend([s1  q1],'SF','ER','Location','northwest','Orientation','vertical');
set(legend,'color','none');
set(legend, 'Box', 'off');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% blue case %%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
shift=0;
load trans_MM_ER_h_1_alpha1_theta.mat;
[p2]=T_vs_D_linbin(xx,5,C_blue,shift+1);
p2.Marker = 'o';
p2.MarkerSize=12;
load trans_MM_h_1_alpha1_theta__zero.mat
[r2]=T_vs_D_linbin(xx,5,C_blue,shift+1);
r2.Marker = 's';
r2.MarkerSize=12;
legend([r2 p2],'SF','ER','Location','northwest','Orientation','vertical');
hold on;
load trans_PD_ER_a_0.25_b_1_theta.mat
load trans_NN_g0.3_s2.5_N6000_perb0.1_B2_alpha1_SF_bin_8apr.mat;
index=find(xx(:,3)<10);
[q2]=T_vs_D_linbin(xx,6,C_blue,shift*2);
q2.Marker = 'o';
q2.MarkerSize=12;
load trans_NN_g0.3_s2.5_N6000_perb0.1_B2_alpha1_ER_bin_8apr.mat;
[s2]=T_vs_D_linbin(xx,6,C_blue,shift*9);
s2.Marker = 's';
s2.MarkerSize=12;
axis_setting_blue_R1_N
legend([s2 q2],'SF','ER','Location','northwest','Orientation','vertical');
set(legend,'color','none');
set(legend, 'Box', 'off');
 


