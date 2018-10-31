function [A]= Switch_networks(nets)
%load trans_MM_ER_h_1_alpha1_theta_zero.mat
%plottype = '1'; 
% bin_num=400;bin_num_all=800;
% D=10;% IF Erdos Renyi
%D=7; % If Scale Free
switch nets
case 1
       load('SF');
case 2
       load('SF1');
case 3
        load('SF2');
case 4
        load('ER');
case 5
        load('PPI1');
case 6
        load('PPI2');
case 7
        load('PPI3');
case 8
        load('PPI4');
case 9
        load('Brain');
case 10
        load('ECO1');
case 11
        load('ECO2');
case 12
        load('UCIonline');
case 13
        load('Epoch');
case 14
        load('ATN');
case 15
        load('Epinions');
case 16
        load('A_300_gamma3');
end 