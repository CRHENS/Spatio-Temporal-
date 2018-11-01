# Spatio-Temporal Project
All codes  used in our paper "Predicting the patterns of spatio-temporal signal propagation in complex networks" are strored here.
There are four folders inside the folder named 'Codes Spatio-Temporal' : 'Fig1', 'Model', 'Networks', 'Plot'. All the models  (R_1, N, R_2, P, M, E) and codes for generating the coupled equations as well as numerical solutions  are in the folder 'Model'.  All the networks (Total 15+1) are in the folder'Networks'. All the plot codes for the Fig 3g-l, 4a-f, 6i-k are in the folder 'Plot'.
 Start with the code SpreadingDynamics. Run the code and chose the network as well as the models as per your choice. Please note that a) if you use the model  R_1 or  N, uncomment the  line 'Blue_P_T_vsT_Tau_vs_S_TvsL_TvsUniv_dist' in the script SpreadingDynamics. b)if you use the model  P, uncomment the  line 'Red_PD_P_T_vsT_Tau_vs_S_TvsL_TvsUniv_dist' in the script SpreadingDynamics.  c) if you use the model  R_2, uncomment the  line 'Red_PD_P_T_vsT_Tau_vs_S_TvsL_TvsUniv_dist' in the script SpreadingDynamics.  d)  if you use the model  R_2, uncomment the  line 'Red_R2_P_T_vsT_Tau_vs_S_TvsL_TvsUniv_dist' in the script SpreadingDynamics. e)For M and E uncomment Green_P_T_vsT_Tau_vs_S_TvsL_TvsUniv_dist.
For the Fig1 go to the folder 'Fig1' and run  the script 'plot_ts_red', 'plot_ts_blue', 'plot_ts_green' for R_2, R_1 and R_3 respectively.
I suggest start with a small network:  'A_300_gamma3' (Network Number 16)
Hope you will enjoy to run the codes.
