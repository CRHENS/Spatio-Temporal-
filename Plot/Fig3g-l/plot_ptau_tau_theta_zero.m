C_blue ={[ 0 0 0.543] ,  [0.2539 0.4101 0.8789 ],[ 0 0 0.8],   [0.3906 0.5820 0.9258] ,[0 0 1], [153 153 255]./255};
C=C_blue;

%load trans_MM_ER_h_1_alpha1_theta_zero.mat
bin_num_all=2000; 
spacing_step_infull_data=(max(xx(:,3))-min(xx(:,3)))./bin_num_all;
f1=figure(1); lin_bin_plot_blue(xx,spacing_step_infull_data,C)
 axis_figure_setting_blue(f1);
%legend('ER');
 %legend('D=1','D=2','D=3','D=4','D=5','D=6','D=7','D=8','D=9','D=10','');
 
%  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  load trans_MM_h_1_alpha1_theta__zero.mat;
% spacing_step_infull_data=(max(xx(:,3))-min(xx(:,3)))./bin_num_all;
% f2=figure(2); lin_bin_plot(xx,spacing_step_infull_data,C)
%  axis_figure_setting(f2);
% legend('SF');
 % legend('D=1','D=2','D=3','D=4','D=5','D=6','D=7','D=8','');
%  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% % %  bin_num=400;bin_num_all=2000;
% load trans_PD_ER_a_0.25_b_1_theta_zero.mat
% spacing_step_infull_data=(max(xx(:,3))-min(xx(:,3)))/bin_num_all;
% f3=figure(3);log_linear_all(xx,DER,plottype,bin_num,bin_num_all,spacing_step_infull_data)
%  axis_figure_setting(f3)
% %   legend('D=1','D=2','D=3','D=4','D=5','D=6','D=7','D=8','D=9','D=10','');
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% % %bin_num=400;bin_num_all=1000;
% load trans_PD_a_0.25_b_1_theta_zero.mat
% spacing_step_infull_data=(max(xx(:,3))-min(xx(:,3)))/bin_num_all;
% f4=figure(4); log_linear_all(xx,DSF,plottype,bin_num,bin_num_all,spacing_step_infull_data)
%  axis_figure_setting(f4)
%  legend('D=1','D=2','D=3','D=4','D=5','D=6','D=7','D=8','');
% 
% 
% 
