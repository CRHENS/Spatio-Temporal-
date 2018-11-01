%clear
C_blue ={[ 0 0 0.543] ,  [0.2539 0.4101 0.8789 ],[ 0 0 0.8],   [0.3906 0.5820 0.9258] ,[0 0 1], [153 153 255]./255};
C_red ={[ 0.8008  0.3594  0.3594] ,  [0.9102    0.5859    0.4766], [ 1 0 0], [255 102 102]./255,[0.5430   0  0], [255 153 153]./255};
C_green ={[0.1328 0.5430 0.1328] , [0.4180 0.5547 0.1367 ], [0 0.3960 0],...
[0.5 0.55 0.0], [0.5586 0.7344 0.5586], [102 255 102]./255};
%%%%%%%%%%Green Case%%%%%%%%%%%%
C=C_green;
shift=1;
[p]=T_vs_D_linbin(xx,5,C_green,shift*1);
p.Marker = 'o';
p.MarkerSize=15;
% load trans_ECO_K_1_D_1_H_1_power2thetaminus1.mat;
% [r]=T_vs_D_linbin(xx,5,C_green,shift*2);
% r.Marker = 's';
% r.MarkerSize=15;
%  legend([r p],'SF','ER','Location','northwest','Orientation','vertical');
% hold on
% load Trans_SIS_ER_deg_4_18mar.mat
% [q]=T_vs_D_linbin(xx,6,C_green,shift*1.1);
% q.Marker = 'o';
% q.MarkerSize=15;
% 
% load Trans_SIS_deg_4_13mar.mat
% [s1]=T_vs_D_linbin(xx,6,C_green,shift*2.1);
% s1.Marker = 's';
% s1.MarkerSize=15;

axis_setting_green_E_M
% legend([s1 q],'SF','ER','Location','northwest','Orientation','vertical');
% 
% set(legend,'color','none');
% set(legend, 'Box', 'off');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%Red Case%%%%%%%%%%%%%%%%
