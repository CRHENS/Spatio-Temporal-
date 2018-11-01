%clear all;

%  C = {[0 0.4470 0.7410], [0.8500 0.3250 0.0980], [0.9290 0.6940 0.1250],...
%     [0.4940 0.1840 0.5560],... 
%     [0.4660 0.6740  0.1880], [ 0.3010 0.7450 0.9330], ...
%     [0.6350 0.0780 0.1840], [.5 .6 .7],[.8 .2 .6], [ 0 1 0], [0.6 0.6 0.6]}; 

%C_red ={[ 0.8008  0.3594  0.3594] ,  [0.9102    0.5859    0.4766], [ 1 0 0], [0.9375 0.5000 0.5000],[0.5430   0  0]};
C_blue ={[ 0 0 0.543] ,  [0.2539 0.4101 0.8789 ],[ 0 0 0.8],   [0.3906 0.5820 0.9258] ,[0 0 1], [153 153 255]./255};
C=C_blue;

% legend([p q r s t],'ER','SF','YEAST-PPI','HUMAN-PPI','Weighted');
%userpath('C:\Users\User\Desktop\Spatio_temporal_project_2017_November\Data_folder_tau_s_D')
 
%userpath('C:\Users\CHITTARANJAN HENS\Desktop\Nat_Phys_comment\Data_folder_tau_s_D')

% load trans_MM_ER_h_1_alpha1_theta.mat;
%  load ER_6000_deg4.mat;
%  load 'L_MM_ER_zero_1_15nodes_30perb_min_res_concept'
  xx=xx(1:50*length(A),:);
shift=2.5;
[raw_dataw raw_data binned_data indexs indexinf index_deg ...
    index_dist]= tau_vs_L_blue(xx,L,2,C,shift,1);
 p=plot(binned_data(1:end,1),binned_data(1:end,2)+shift,...
 'o','linewidth',2,'color',C{5});
p.Marker = 'o';
p.MarkerSize=15;
hold on;
%%save binned_data_er_blue.mat binned_data;


% load('A_scale_6000_gamma3.mat')
%  load L_zero_MM_1_23nodes_30perb_min_res_concept.mat;
%  load('trans_MM_h_1_alpha1_theta__zero.mat') 
%  xx=xx(1:23*6000,:);
% shift=18.5;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,1,C,shift,1);
%  %q=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  q=plot(binned_data(1:end,1),binned_data(1:end,2)+shift,...
%  'o','linewidth',2,'color',C{5});
%   q.Marker = 's';
% q.MarkerSize=15;
% hold on;
% %%save binned_data_sf_blue.mat binned_data;
% 
% load trans_MM_h_1_alpha1_thetazero_weightednew.mat;
% load A_weighted_6000.mat;
% load L_MM_weighted_SF_zero_1_23nodes_30perb_min_res_concept.mat;
% xx=xx(1:20*6000,:);
% shift=16.0;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%     index_dist]= tau_vs_L(xx,L,5,C,shift,1);
%  %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  t1=plot(binned_data(1:end,1),binned_data(1:end,2)+shift,...
%  'o','linewidth',2,'color',C{5});
% t1.Marker = 'v';
% t1.MarkerSize=15;
% hold on;
% %%%save binned_data_weight_blue.mat binned_data;
% 
% 
% load trans_MM_h_1_alpha1_SF_SFweighted.mat;
% load A_SF_SFweighted.mat;
% load L_MM_PD_SF_SFweighted_theta_zero_blue.mat;
% xx=xx(1:25*6000,:);
% shift=14;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%     index_dist]= tau_vs_L(xx,L,5,C,shift,1);
%  %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  t2=plot(binned_data(1:end,1),binned_data(1:end,2)+shift,...
%  'o','linewidth',2,'color',C{5});
% t2.Marker = '^';
% t2.MarkerSize=15;
% hold on;
% 
% load('YeastPPI_adj_matrix_new_rem_disconnected.mat')
% load L_MM_YEAST_zero_1_26nodes_30perb_min_res_concept.mat;
% load('trans_MM_Yeast_res_dist_h_1_alpha1.mat');
% xx=xx(1:26*length(A),:);
% shift=12.3;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,3,C,shift,1);
%   %r=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  r=plot(binned_data(1:end-1,1),binned_data(1:end-1,2)+shift,...
%  'o','linewidth',2,'color',C{5});
% r.Marker = 'd';
% r.MarkerSize=15;
% hold on;
% %%%save binned_data_yeast_blue.mat binned_data;
% 
%  load('human_Y2H_connected_adj_matrix_new_rem_disconnected.mat')
%  load L_MM_HUMAN_zero_1_26nodes_30perb_min_res_concept.mat;
%  load('trans_MM_human_ppi_res_dist_h_1_alpha1_jan1.mat') ;
%  xx=xx(1:26*length(A),:);
% shift=11;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,4,C,shift,1);
%   %s=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  s=plot(binned_data(1:end,1),binned_data(1:end,2)+shift,...
%  'o','linewidth',2,'color',C{5});
% s.Marker = '>';
% s.MarkerSize=15;
% hold on;
% %%save binned_data_human_blue.mat binned_data;
% 
% 
%  load('A_Arabidopsis_interactome_giant_component.mat')
%  load L_Arabidopsis_MM_blue.mat;
%  load('trans_Arabidopsis_matrix_SF_MM_h1_alpha11_N2938_eta0.7_upd.mat') ;
%  xx(:,2)=[];
%  xx=xx(1:50*length(A),:);
% shift=10.5;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,4,C,shift,1);
%   %s=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  ss=plot(binned_data(1:end,1),binned_data(1:end,2)+shift,...
%  'o','linewidth',2,'color',C{5});
% ss.Marker = 'p';
% ss.MarkerSize=15;
% hold on;
% 
% load('A_rattus_arenas_giant_component.mat')
%  load L_Rattus_MM_blue.mat;
%  load('trans_rattus_arenas_SF_MM_h1_alpha11_N2350_eta0.7_updn.mat') ;
%   xx(:,2)=[];
%  xx=xx(1:50*length(A),:);
% shift=7.8;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,4,C,shift,1);
%   %s=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  pp=plot(binned_data(1:end-9,1),binned_data(1:end-9,2)+shift,...
%  'o','linewidth',2,'color',C{5});
% pp.Marker = 'h';
% pp.MarkerSize=15;
% hold on;
% 
% 
% 
% 
% %hj=columnlegend(2,[p q t1 t2 r s ss pp bb r1 s1],...
%   %  'ER','SF','SF1','SF2','PPI1','PPI2','PPI3','PPI4','Brain,''ECO1','ECO2');
axis_setting_blue_univ_dist
% % set(legend,'color','none');
% % set(legend, 'Box', 'off');
% %set(hj,'FontSize',30,'color','none','Box', 'off');
% %text('position',[4.5 4.5],'Interpreter','latex','String','{\boldmath $\theta=0$}','FontSize',42)
% 
% 
% 
% 
%  load trans_NN_g0.3_s2.5_N6000_perb0.1_B2_alpha1_ER_bin_8apr.mat;
%    xx=xx(1:50*6000,:); L=[xx(:,1) xx(:,3) xx(:,2) xx(:,4)];
%  shift=7.5;
%  [raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,2,C,shift,1);
%   p=plot(binned_data(1:end,1),binned_data(1:end,2)+shift,...
%   'o','linewidth',2,'color',C{6});
%  p.Marker = 'o';
%  p.MarkerSize=15;
%  hold on;
% % %save binned_data_er_blue.mat binned_data;
% % 
% % 
% load trans_NN_g0.3_s2.5_N6000_perb0.1_B2_alpha1_SF_bin_8apr.mat;
%  load A_scale_6000_gamma3.mat; L=[xx(:,1) xx(:,3) xx(:,2) xx(:,4)];
%   xx=xx(1:50*6000,:);
%  shift=8.5;
%  [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%       index_dist]= tau_vs_L(xx,L,1,C,shift,1);
%   %q=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%   %'o','linewidth',2,'color',C{ii});
%   q=plot(binned_data(1:end-2,1),binned_data(1:end-2,2)+shift,...
%   'o','linewidth',2,'color',C{6});
%    q.Marker = 's';
%  q.MarkerSize=15;
%  hold on;
% % %%save binned_data_sf_blue.mat binned_data;
% % 
%  load trans_NN_g0.3_s2.5_N6000_perb0.1_B2_alpha1_SF_Weight_8apr.mat;
%  load A_weighted_6000.mat;
%  xx=xx(1:50*6000,:); L=[xx(:,1) xx(:,3) xx(:,2) xx(:,4)];
%  shift=4.5;
%  [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,5,C,shift,1);
%   %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%   %'o','linewidth',2,'color',C{ii});
%   t1=plot(binned_data(1:end-1,1),binned_data(1:end-1,2)+shift,...
%   'o','linewidth',2,'color',C{6});
%  t1.Marker = 'v';
%  t1.MarkerSize=15;
%  hold on;
% % 
% load trans_NN_g0.3_s2.5_N6000_perb0.1_B2_alpha1_SF_SF_Weighted_8apr.mat;
%  load A_SF_SFweighted.mat;
%  xx=xx(1:20*6000,:);
% L=[xx(:,1) xx(:,3) xx(:,2) xx(:,4)];
%  shift=1.8;
%  [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,5,C,shift,1);
% %  %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
% %  %'o','linewidth',2,'color',C{ii});
%   t2=plot(binned_data(1:end-3,1),binned_data(1:end-3,2)+shift,...
%   'o','linewidth',2,'color',C{6});
%  t2.Marker = '^';
%  t2.MarkerSize=15;
%  hold on;
% 
% 
% load('brain_network.mat')
% A=CIJ_fbden_average;
%  load L_brain_998_blue.mat;
%  load('trans_NN_g0.5_s2.5_N998_perb0.1_B2_alpha1_weighted_brain_net.mat') ;
%  xx=xx(1:50*length(A),:);
% shift=0.3;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,4,C,shift,1);
%   %s=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  bb=plot(binned_data(1:end-4,1),binned_data(1:end-4,2)+shift,...
%  'o','linewidth',2,'color',C{6});
% bb.Marker = '*';
% bb.MarkerSize=15;
% hold on;
% axis_figure_setting_blue
% set(legend,'color','none');
% set(legend, 'Box', 'off');
% %set(hj,'FontSize',30,'color','none','Box', 'off');
% text('position',[4.5 4.5],'Interpreter','latex','String','{\boldmath $\theta=0$}','FontSize',42)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% % load trans_PD_a_0.25_b_1_N1044_ECO1.mat;
% % load A_Pollinator_robertson_agricul_strong_coonectednodes_weighted.mat;
% % load L_ECO1_Pollinator_weighted_theta_zero_blue_PD.mat;
% % xx=xx(1:50*length(A),:);
% % shift=1.8;
% % [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
% %     index_dist]= tau_vs_L(xx,L,5,C,shift,1);
% %  %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
% %  %'o','linewidth',2,'color',C{ii});
% % r1=plot(binned_data(1:end,1),binned_data(1:end,2)+shift,...
% %  'o','linewidth',2,'color',C{6});
% % r1.Marker = 'd';
% % r1.MarkerSize=15;
% % hold on;
% % 
% % 
% % 
% % 
% % load trans_PD_a_0.25_b_1_N456_ECO2.mat;
% % load A_Plant_robertson_agricul_456nodes_weighted.mat;
% % load L_ECO2_PLANT_weighted_theta_zero_blue_PD.mat;
% % xx=xx(1:50*length(A),:);
% % shift=0.8;
% % [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
% %     index_dist]= tau_vs_L(xx,L,5,C,shift,1);
% %  %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
% %  %'o','linewidth',2,'color',C{ii});
% % s1=plot(binned_data(1:end,1),binned_data(1:end,2)+shift,...
% %  'o','linewidth',2,'color',C{6});
% % s1.Marker = 'd';
% % s1.MarkerSize=15;
% % hold on;
% % 
% % hj=columnlegend(2,[p q t1 t2 r s ss pp bb r1 s1],...
% %     'ER','SF','SF1','SF2','PPI1','PPI2','PPI3','PPI4','Brain,''ECO1','ECO2');
% % axis_figure_setting_blue
% %  set(legend,'color','none');
% %  set(legend, 'Box', 'off');
% % set(hj,'FontSize',30,'color','none','Box', 'off');
% % text('position',[4.5 4.5],'Interpreter','latex','String','{\boldmath $\theta=0$}','FontSize',42)
% % 
% % 
% % 
% % 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %  load trans_MM_10knode_h_0.2_alpha0.4_theta1pt5_newsept9.mat;
% % %  load A_scale_10000_gamma3.mat;
% % %  [L]=distance_new(A);
% % %  shift=-1.5;
% % %  [raw_dataw raw_data binned_data indexs indexinf index_deg index_perb index_isola index_dist]= tau_vs_L(xx,L,4,C,shift);
% % %  axis_figure_setting
% % % % axis tight;
% % %  hold on
% % 
% % %%%%%% Airport_binary_directed %%%%%%
% % %  load  Airport_USA_strongconncom_1oct.mat;
% % %   A=A1;
% % %  %load dist_path_USA_strongconncom_oct1;
% % %   load trans_MM_h_1_alpha2_USA_airport_1Nov.mat;
% % %  %dist_path=dist_path_update;
% % % 
% % % [L]=distance_new(A);
% % % shift=2.1;
% % % [raw_dataw raw_data binned_data indexs indexinf index_deg index_perb index_isola index_dist]= tau_vs_L(xx,L,3,C,shift);
% % % axis_figure_setting
% % % axis tight;
% % % hold on;
% % 
% % %%%%%%%%% MM_weighted_undirected %%%%
% % %  load trans_MM_h_1_alpha2_thetanegative_weightedn.mat;
% % %  load A_weighted_6000.mat;
% % %  theta=-0.5; beta=0.5;
% % %  [L]=distance_new(A,theta,beta);
% % %  shift=-1.5;
% % %  [raw_dataw raw_data binned_data indexs indexinf index_deg index_perb index_isola index_dist]= tau_vs_L(xx,L,4,C,shift);
% % %  axis_figure_setting
% % % % axis tight;
% % %  hold on