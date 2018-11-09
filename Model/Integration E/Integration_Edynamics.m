% Copyrigth to Chittaranjan Hens, Uzi Harush and Baruch's lab

%clear all
global  R B alpha w A
load A.mat ;
m1=length(A);n1=1;
R=1;B=1;  alpha=1;
h1=1;
 mm=1; Nosc=m1*n1; 
w=ones(1,m1*n1);
dist_path=pathlength(A);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tic
Create_E_Equations(3,m1,n1,A);
deg=sum(A);
yinit=0.1+1*rand(length(A),1);
time_unperb=40; time_perb=30;
%%%%%%%% Without perturbation %%%%%%%%%%%%%%%%%%%%%%%%
[ystart1]=unperturb_E(yinit,time_unperb,w);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
transienttime=[];  node_dist_perb=[];  
  Effective_deg=[]; deg_perb=[]; perturb_value=[];  deg_in=[]; deg_out=[];
  node=[1:1:50];
 for jj=1:1:50;%length(node)
  %    for jj=1:1:3
% %%%%%%%%%%%%%%%%%%% With  perturbation %%%%%%%%%%%%%%%
 fprintf('node_index=%d\n',jj)
    node_num=node(jj);
    w=ones(1,m1*n1);
    w(node_num)=0.0;
    perb_percent=0.1;
[dt_pert1]=perturb_E(ystart1,node_num,m1,n1,time_perb,w,perb_percent);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% Transient time %%%%%%%%%%%%%%
eta=0.7;
[nn]=transient_measure(dt_pert1,node_num,A,eta);
[ss]=perturb_measure(dt_pert1,node_num);
%%%%%%%%%%%%%%%%%  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Transient time along disatnec and degree saved %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Transient time along disatnec and degree saved %%%%%%%%%%%%
  node_dist=dist_path(node_num,1:end);
 transienttime=[transienttime;nn];
 perturb_value=[perturb_value;ss];
 node_dist_perb=[node_dist_perb;node_dist];
 deg_perb=[deg_perb;deg];
toc;
%%%%%%%%%%%%%%%%% Transient time along distance %%%%%%%
 end


 
 transienttime1=transienttime';
 transienttime_new=transienttime1(1:end);
  perturb_value1= perturb_value';
  perturb_value_new = perturb_value1(1:end);
  node_dist_perb1=node_dist_perb';
 node_dist_perb_new=node_dist_perb1(1:end);
  deg_perb1=deg_perb';
 deg_perb_new=deg_perb1(1:end);
  xx=[deg_perb_new;  node_dist_perb_new; transienttime_new];
   xx=xx'; 
file_name=sprintf('Degree_Dist_T.mat');
   save(file_name,'xx');
     transienttime=[];  perturb_value=[];
 node_dist_perb=[]; deg_perb=[];
 xx=[];
 
 
  % clear;