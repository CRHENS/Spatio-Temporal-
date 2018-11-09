% Copyrigth to Chittaranjan Hens, Uzi Harush and Baruch's lab

%clear all
global B K D H E w p1 A
load A.mat; 
deg=sum(A);
dist_path=pathlength(A);
m1=length(A); n1=1;
 Nosc=m1*n1; 
yinit=0.1+0.5*rand(Nosc,1); 
  
w=ones(1,m1*n1);
B=0.0;

K=1; D=1; H=1; E=0; %% according to Baruch

 p1=2;
sv=[];
 %%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%
Create_M_Equations(3,m1,n1,A);
deg=sum(A);
dist_path=pathlength(A);
 time_unperb=20;
 time_perb=20;
   w=ones(1,m1*n1); 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[ystart1]=unperturb_ECO(yinit,time_unperb,w);
transienttime=[];  node_dist_perb=[];  
  Effective_deg=[]; deg_perb=[]; perturb_value=[];  deg_in=[]; deg_out=[];
  node=1:1:50;
for jj=1:length(node)
% for jj=1
    fprintf('node_index=%d \n',jj)
    node_num=node(jj);
    w=ones(1,m1*n1);
    w(node_num)=0.0;
     perb_percent=0.1;
% %%%%%%%%%%%%%%%%%%% With  perturbation %%%%%%%%%%%%%%%%%%%%
 [dt_pert1]=perturb_ECO(ystart1,node_num,time_perb,w, perb_percent);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
eta=0.7;
% %%%%%%%%%%%%%%%%% Transient time %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 [nn]=transient_measure(dt_pert1,node_num,A,eta);
 [ss]=perturb_measure(dt_pert1,node_num);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%% Transient time along disatnec and degree saved %%%%%%%%%%%%
 node_dist=dist_path(node_num,1:end);
 transienttime=[transienttime;nn];
 perturb_value=[perturb_value;ss];
 node_dist_perb=[node_dist_perb;node_dist];
 deg_perb=[deg_perb;deg];
 toc;
 end
 transienttime1=transienttime';
 transienttime_new=transienttime1(1:end);

 node_dist_perb1=node_dist_perb';
 node_dist_perb_new=node_dist_perb1(1:end);
 deg_perb1=deg_perb';
 deg_perb_new=deg_perb1(1:end);
 xx=[deg_perb_new;  node_dist_perb_new; transienttime_new];
 xx=xx';
 file_name=sprintf('Degree_Dist_T.mat');
 save(file_name,'xx');



