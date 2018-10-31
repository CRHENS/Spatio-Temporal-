C_green ={[0.1328 0.5430 0.1328] , [0.4180 0.5547 0.1367 ], [0 0.3960 0],...
[0.5 0.55 0.0], [0.5586 0.7344 0.5586], [102 255 102]./255};
C=C_green;

%load Trans_SIS_ER_deg_4_18mar.mat
bin_num_all=200; 
spacing_step_infull_data=(max(xx(:,3))-min(xx(:,3)))./bin_num_all;
f1=figure(1); lin_bin_plot_green(xx,6,spacing_step_infull_data,C)
 axis_figure_setting_green(f1)
%%% legend('ER','');
 
%  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  bin_num=300;bin_num_all=900;
% load trans_MM_h_1_alpha1_theta__zero.mat
%  load Trans_SIS_deg_4_13mar.mat;
% spacing_step_infull_data=(max(xx(:,3))-min(xx(:,3)))./bin_num_all;
% f2=figure(2); lin_bin_plot(xx,6,spacing_step_infull_data,C)
%  axis_figure_setting(f2)
%  legend('SF','');
% %  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% % % %  bin_num=400;bin_num_all=2000;
% % load trans_PD_ER_a_0.25_b_1_theta_zero.mat
% % spacing_step_infull_data=(max(xx(:,3))-min(xx(:,3)))/bin_num_all;
% % f3=figure(3);log_linear_all(xx,DER,plottype,bin_num,bin_num_all,spacing_step_infull_data)
% %  axis_figure_setting(f3)
% % %   legend('D=1','D=2','D=3','D=4','D=5','D=6','D=7','D=8','D=9','D=10','');
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% % % %bin_num=400;bin_num_all=1000;
% % load trans_PD_a_0.25_b_1_theta_zero.mat
% % spacing_step_infull_data=(max(xx(:,3))-min(xx(:,3)))/bin_num_all;
% % f4=figure(4); log_linear_all(xx,DSF,plottype,bin_num,bin_num_all,spacing_step_infull_data)
% %  axis_figure_setting(f4)
% %  legend('D=1','D=2','D=3','D=4','D=5','D=6','D=7','D=8','');
% % 
% % 
% % 
