%clear
C_blue ={[ 0 0 0.543] ,  [0.2539 0.4101 0.8789 ],[ 0 0 0.8],   [0.3906 0.5820 0.9258] ,[0 0 1], [153 153 255]./255};
C_red ={[ 0.8008  0.3594  0.3594] ,  [0.9102    0.5859    0.4766], [ 1 0 0], [255 102 102]./255,[0.5430   0  0], [255 153 153]./255};
C_green ={[0.1328 0.5430 0.1328] , [0.4180 0.5547 0.1367 ], [0 0.3960 0],...
[0.5 0.55 0.0], [0.5586 0.7344 0.5586], [102 255 102]./255};
%%%%%%%%%%%%%%%Red Case%%%%%%%%%%%%%%%%
%figure;
shift=1;
%%%load trans_MM_ER_h_0.2_alpha0.4_theta_1PT5.mat;
[p1]=T_vs_D_linbin(xx,3,C_red,shift*1);
p1.Marker = 'o';
p1.MarkerSize=15;
% load trans_MM_h_0.2_alpha0.4_theta1pt5_newaug28.mat
% [r1]=T_vs_D_linbin(xx,3,C_red,shift*3);
% r1.Marker = 's';
% r1.MarkerSize=15;
% hold on;
% load trans_PD_ER_a_0.2_b_0.5_theta.mat
% [q1]=T_vs_D_linbin(xx,6,C_red,shift*2);
% q1.Marker = 'o';
% q1.MarkerSize=15;
% load trans_PD_a_0.2_b_0.5_theta.mat
% [s1]=T_vs_D_linbin(xx,6,C_red,shift*4);
% s1.Marker = 's';
% s1.MarkerSize=15;
axis_setting_red_R2_P
% legend([s1  q1],'SF','ER','Location','northwest','Orientation','vertical');
% set(legend,'color','none');
% set(legend, 'Box', 'off');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% blue case %%%%%%%%%%%%%%%%%%%%%%%%%%
