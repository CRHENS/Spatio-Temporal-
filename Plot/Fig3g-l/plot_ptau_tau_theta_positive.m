C_red ={[ 0.8008  0.3594  0.3594] ,  [0.9102    0.5859    0.4766], [ 1 0 0], [255 102 102]./255,[0.5430   0  0], [255 153 153]./255};
%%C_blue ={[ 0 0 0.543] ,  [0.2539 0.4101 0.8789 ],[ 0 0 0.8],   [0.3906 0.5820 0.9258] ,[0 0 1]};
C=C_red;

%load trans_MM_h_0.2_alpha0.4_N6000_perb_percent0.1_eta0.7.mat
bin_num_all=800; 
spacing_step_infull_data=(max(xx(:,3))-min(xx(:,3)))./bin_num_all;
f1=figure(1); lin_bin_plot_red(xx,spacing_step_infull_data,C)
 axis_figure_setting_red(f1);
% legend('SF');
%  %legend('D=1','D=2','D=3','D=4','D=5','D=6','D=7','D=8','D=9','D=10','');
%  hold on
%  %clear
% %  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %  bin_num=300;bin_num_all=900;
% % load trans_MM_h_1_alpha1_theta__zero.mat
% bin_num_all=3000;
%  load trans_MM_ER_h_0.2_alpha0.4_theta_1PT5.mat;
% spacing_step_infull_data=(max(xx(:,3))-min(xx(:,3)))./bin_num_all;
% f2=figure(2); lin_bin_plot(xx,spacing_step_infull_data,C)
%  axis_figure_setting(f2);
% legend('ER');
% hold on;
%  % legend('D=1','D=2','D=3','D=4','D=5','D=6','D=7','D=8','');
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
