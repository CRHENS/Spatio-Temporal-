%clear
C_blue ={[ 0 0 0.543] ,  [0.2539 0.4101 0.8789 ],[ 0 0 0.8],   [0.3906 0.5820 0.9258] ,[0 0 1], [153 153 255]./255};
C_red ={[ 0.8008  0.3594  0.3594] ,  [0.9102    0.5859    0.4766], [ 1 0 0], [255 102 102]./255,[0.5430   0  0], [255 153 153]./255};
C_green ={[0.1328 0.5430 0.1328] , [0.4180 0.5547 0.1367 ], [0 0.3960 0],...
[0.5 0.55 0.0], [0.5586 0.7344 0.5586], [102 255 102]./255};
%%%%%%%%%%Green Case%%%%%%%%%%%%
%%%%%%%%%%%% blue case %%%%%%%%%%%%%%%%%%%%%%%%%%
%figure;
shift=0;
%%load trans_MM_ER_h_1_alpha1_theta.mat;
[p2]=T_vs_D_linbin(xx,5,C_blue,shift+1);
p2.Marker = 'o';
p2.MarkerSize=12;
% load trans_MM_h_1_alpha1_theta__zero.mat
% [r2]=T_vs_D_linbin(xx,5,C_blue,shift+1);
% r2.Marker = 's';
% r2.MarkerSize=12;
% legend([r2 p2],'SF','ER','Location','northwest','Orientation','vertical');
% hold on;
% load trans_PD_ER_a_0.25_b_1_theta.mat
% load trans_NN_g0.3_s2.5_N6000_perb0.1_B2_alpha1_SF_bin_8apr.mat;
% index=find(xx(:,3)<10);
% [q2]=T_vs_D_linbin(xx,6,C_blue,shift*2);
% q2.Marker = 'o';
% q2.MarkerSize=12;
% load trans_NN_g0.3_s2.5_N6000_perb0.1_B2_alpha1_ER_bin_8apr.mat;
% [s2]=T_vs_D_linbin(xx,6,C_blue,shift*9);
% s2.Marker = 's';
% s2.MarkerSize=12;
axis_setting_blue_R1_N
%%legend([s2 q2],'SF','ER','Location','northwest','Orientation','vertical');
set(legend,'color','none');
set(legend, 'Box', 'off');
 


