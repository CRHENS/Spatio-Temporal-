%  C = {[0 0.4470 0.7410], [0.8500 0.3250 0.0980], [0.9290 0.6940 0.1250],...
%     [0.4940 0.1840 0.5560],... 
%     [0.4660 0.6740  0.1880], [ 0.3010 0.7450 0.9330], ...
%     [0.6350 0.0780 0.1840], [.5 .6 .7],[.8 .2 .6], [ 0 1 0], [0.6 0.6 0.6]}; 

C_red ={[ 0.8008  0.3594  0.3594] ,  [0.9102    0.5859    0.4766], [ 1 0 0], [255 102 102]./255,[0.5430   0  0], [255 153 153]./255};
%%C_blue ={[ 0 0 0.543] ,  [0.2539 0.4101 0.8789 ],[ 0 0 0.8],   [0.3906 0.5820 0.9258] ,[0 0 1]};
C=C_red;
% legend([p q r s t],'ER','SF','YEAST-PPI','HUMAN-PPI','Weighted');
%userpath('C:\Users\User\Desktop\Spatio_temporal_project_2017_November\Data_folder_tau_s_D')
%%userpath('C:\Users\CHITTARANJAN HENS\Desktop\Nat_Phys_comment\Data_folder_tau_s_D')
% load trans_MM_ER_h_0.2_alpha0.4_theta_1PT5.mat;
% load ER_6000_deg4.mat;
% load L_MM_ER_pos_1_15nodes_30perb_min_res_concept.mat;
xx=xx(1:50*length(A),:);
shift=10;
[ raw_dataw raw_data binned_data indexs indexinf index_deg ...
     index_dist]= tau_vs_L_red_green(xx,L,2,C,shift,1);
 %p=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
 %'o','linewidth',2,'color',C{ii});
 p=plot(binned_data(1:end-1,1),binned_data(1:end-1,2)*shift,...
 'o','linewidth',2,'color',C{3});
p.Marker = 'o';
p.MarkerSize=15;
hold on;
%save binned_data_er_blue.mat binned_data;


%  load('A_scale_6000_gamma3.mat')
%  load L_pos_MM_1_23nodes_30perb_min_res_concept.mat;
%  load('trans_MM_h_0.2_alpha0.4_theta1pt5_newaug28.mat') ;
%  xx=xx(1:23*6000,:);
% shift=450;
% %load trans_MM_h_0.25_alpha0.4_theta1pt5_newaug21.mat; 
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,1,C,shift,1);
%  %q=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  q=plot(binned_data(1:end-1,1),binned_data(1:end-1,2)*shift,...
%  'o','linewidth',2,'color',C{3});
%   q.Marker = 's';
% q.MarkerSize=15;
% hold on;
% %%save binned_data_sf_blue.mat binned_data;
% % y_hat1 = exp(1* log(binned_data(1:end,1)));
% % loglog(binned_data(1:end,1), y_hat1(1:end)*8,'linewidth',4,'color',[0 0 0]); 
% 
% hold on;
% 
% load trans_MM_h_0.6_alpha0.4_theta1pt5_weighted.mat;
% load A_weighted_6000.mat;
% load L_MM_weighted_SF_pos_1_23nodes_30perb_min_res_concept.mat;
% xx=xx(1:20*6000,:);
% shift=180;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%     index_dist]= tau_vs_L(xx,L,5,C,shift,1);
%  %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  t1=plot(binned_data(1:end-1,1),binned_data(1:end-1,2)*shift,...
%  'o','linewidth',2,'color',C{3});
% t1.Marker = 'v';
% t1.MarkerSize=15;
% hold on;
% %save binned_data_weight_blue.mat binned_data;
% y_hat1 = exp(1* log(binned_data(1:end,1)));
% loglog(binned_data(1:end,1), y_hat1(1:end)*15,'linewidth',4,'color',[0 0 0]); 
% 
% load trans_MM_h_0.2_alpha0.4_SF_SFweighted.mat;
% load A_SF_SFweighted.mat;
% load L_MM_SF_SFweighted_theta_pos_red.mat;
% xx=xx(1:25*6000,:);
% shift=80;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%     index_dist]= tau_vs_L(xx,L,5,C,shift,1);
%  %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  t2=plot(binned_data(1:end-1,1),binned_data(1:end-1,2)*shift,...
%  'o','linewidth',2,'color',C{3});
% t2.Marker = '^';
% t2.MarkerSize=15;
% hold on;
% 
% 
% 
% 
%  load('YeastPPI_adj_matrix_new_rem_disconnected.mat')
%  load L_MM_YEAST_pos_1_26nodes_30perb_min_res_concept.mat;
%  load('trans_MM_Yeast_res_dist_h_0.2_alpha0.4.mat') ;
%  xx=xx(1:26*length(A),:);
% shift=60.0;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,3,C,shift,1);
%   %r=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
% r=plot(binned_data(1:end-1,1),binned_data(1:end-1,2)*shift,...
%  'o','linewidth',2,'color',C{3});
% r.Marker = 'd';
% r.MarkerSize=15;
% hold on;
% %%%save binned_data_yeast_blue.mat binned_data;
% 
% load('human_Y2H_connected_adj_matrix_new_rem_disconnected.mat')
%  load L_MM_HUMAN_pos_1_26nodes_30perb_min_res_concept.mat;
% load('trans_MM_human_ppi_res_dist_h_0.2_alpha0.4_jan1.mat');
%  xx=xx(1:26*length(A),:);
% shift=15.4;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,4,C,shift,1);
%   %s=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  s=plot(binned_data(1:end-1,1),binned_data(1:end-1,2)*shift,...
%  'o','linewidth',2,'color',C{3});
% s.Marker = '>';
% s.MarkerSize=15;
% hold on;
% % y_hat1 = exp(1* log(binned_data(1:end,1)));
% % loglog(binned_data(1:end,1), y_hat1(1:end)*6,'linewidth',4,'color',[0 0 0]); 
% %%save binned_data_human_blue.mat binned_data;
% 
%  load('A_Arabidopsis_interactome_giant_component.mat')
%  load L_Arabidopsis_MM_red.mat;
%  load('trans_Arabidopsis_matrix_SF_MM_h0.2_alpha10.4_N2938_eta0.7_upd.mat') ;
%   xx(:,2)=[];
%  xx=xx(1:50*length(A),:);
% shift=12.5;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,4,C,shift,1);
%   %s=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  ss=plot(binned_data(1:end,1),binned_data(1:end,2)*shift,...
%  'o','linewidth',2,'color',C{3});
% ss.Marker = 'p';
% ss.MarkerSize=15;
% hold on;
% 
% load('A_rattus_arenas_giant_component.mat')
%  load L_Rattus_MM_red.mat;
%  load('trans_rattus_arenas_SF_MM_h0.2_alpha10.4_N2350_eta0.7_updn.mat') ;
%   xx(:,2)=[];
%  xx=xx(1:50*length(A),:);
% shift=9;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,4,C,shift,1);
%   %s=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  pp=plot(binned_data(1:end,1),binned_data(1:end,2)*shift,...
%  'o','linewidth',2,'color',C{3});
% pp.Marker = 'h';
% pp.MarkerSize=15;
% hold on;
% 
% 
%  load trans_PD_ER_a_0.2_b_0.5_theta.mat
%  load ER_6000_deg4.mat;
%  load 'L_PD_ER_pos_1_15nodes_30perb_min_res_concept'
%   xx=xx(1:15*6000,:);
%  shift=1.1;
% [raw_dataw raw_data binned_data indexs indexinf index_deg ...
%     index_dist]= tau_vs_L(xx,L,2,C,shift,1);
%  p=plot(binned_data(1:end,1),binned_data(1:end,2)*shift,...
%  'o','linewidth',2,'color',C{6});
% p.Marker = 'o';
% p.MarkerSize=15;
% hold on;
% %%save binned_data_er_blue.mat binned_data;
% 
% 
% load trans_PD_a_0.2_b_0.5_theta.mat
% load A_scale_6000_gamma3.mat;
% load L_pos_PD_1_23nodes_30perb_min_res_concept.mat;
%  xx=xx(1:23*6000,:);
% shift=0.25;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%      index_dist]= tau_vs_L(xx,L,1,C,shift,1);
%  %q=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  q=plot(binned_data(1:end,1),binned_data(1:end,2)*shift,...
%  'o','linewidth',2,'color',C{6});
%   q.Marker = 's';
% q.MarkerSize=15;
% hold on;
% %%save binned_data_sf_blue.mat binned_data;
% 
% load trans_PD_a_0.2_b_0.5_theta_weighted.mat;
% load A_weighted_6000.mat;
% load L_PD_weighted_SF_pos_1_23nodes_30perb_min_res_concept.mat;
%  xx=xx(1:23*6000,:);
% shift=0.09;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%     index_dist]= tau_vs_L(xx,L,5,C,shift,1);
%  %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  t1=plot(binned_data(1:end,1),binned_data(1:end,2)*shift,...
%  'o','linewidth',2,'color',C{6});
% t1.Marker = 'v';
% t1.MarkerSize=15;
% hold on;
% % y_hat1 = exp(1* log(binned_data(1:end,1)));
% % loglog(binned_data(1:end,1), y_hat1(1:end)*4,'linewidth',4,'color',[0 0 0]); 
% 
% load trans_PD_a_0.2_b_0.5_theta_SF_SFweighted.mat;
% load A_SF_SFweighted.mat;
% load L_PD_SF_SFweighted_theta_pos_red.mat;
% xx=xx(1:25*6000,:);
% shift=0.018;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%     index_dist]= tau_vs_L(xx,L,5,C,shift,1);
%  %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  t2=plot(binned_data(1:end-1,1),binned_data(1:end-1,2)*shift,...
%  'o','linewidth',2,'color',C{6});
% t2.Marker = '^';
% t2.MarkerSize=15;
% hold on;
% 
% load  trans_PD_a_0.1_b_0.5_N1044_ECO1.mat;
% load A_Pollinator_robertson_agricul_strong_coonectednodes_weighted.mat;
% load L_ECO1_Pollinator_weighted_theta_pos_red_PD.mat;
% xx=xx(1:50*length(A),:);
% shift=0.01;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%     index_dist]= tau_vs_L(xx,L,5,C,shift,1);
%  %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
%  r1=plot(binned_data(5:end,1),binned_data(5:end,2)*shift,...
%  'o','linewidth',2,'color',C{6});
% % r1.Marker = 'd';
% % r1.MarkerSize=15;
% % hold on;
% r1.Marker = 'o';
% r1.MarkerSize=15;
% r1.MarkerFaceColor=C{6};
% hold on;
% % y_hat1 = exp(1* log(binned_data(1:end,1)));
% % loglog(binned_data(1:end,1), y_hat1(1:end)*4,'linewidth',4,'color',[0 0 0]); 
% 
% load trans_PD_a_0.1_b_0.5_N456_ECO2.mat;
% load A_Plant_robertson_agricul_456nodes_weighted.mat;
% load L_ECO2_PLANT_weighted_theta_pos_red_PD.mat;
% xx=xx(1:50*length(A),:);
% shift=0.005;
% [ raw_dataw raw_data binned_data indexs indexinf index_deg ...
%     index_dist]= tau_vs_L(xx,L,5,C,shift,1);
%  %t=errorbar(binned_data(1:end-2,1),binned_data(1:end-2,2)*shift,binned_data(1:end-2,3),...
%  %'o','linewidth',2,'color',C{ii});
% s1=plot(binned_data(1:end-1,1),binned_data(1:end-1,2)*shift,...
%  'o','linewidth',2,'color',C{6});
% s1.Marker = 's';
% s1.MarkerSize=15;
% s1.MarkerFaceColor=C{6};
% hold on;
 
 axis_setting_red_univ_dist
% % hj=columnlegend(2,[p q t1 t2 r s],'ER','SF','SF1','SF2','PPI1','PPI2');
% %hj=columnlegend(2,[p q t1 t2 r s r1 s1],'ER','SF','SF1','SF2','PPI1','PPI2','ECO1','ECO2');
% % hj=columnlegend(2,[p q t1 t2 r s ss pp  r1 s1],...
% %     'ER','SF','SF1','SF2','PPI1','PPI2','PPI3','PPI4','ECO1','ECO2');
% % 
% % set(hj,'FontSize',36,'color','none','Box', 'off');
% % text('position',[300.5 300.5],'Interpreter','latex','String','{\boldmath$\theta=\frac{3}{2}$}','FontSize',42)
% 
