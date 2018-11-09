% Copyrigth to Chittaranjan Hens, Uzi Harush and Baruch's lab

clear all
 par_1=[0.2]; 
 par_2=[0.5];
 tic
for i=1
global R B  F b1 a1 w A
load A.mat;   %%%% Network 
 m1=length(A); n1=1;
    mm=1; Nosc=m1*n1; 
% end
dist_path=pathlength(A);
m1=length(A);n1=1;
Nosc=m1*n1; 
w=ones(1,m1*n1);
 R=1;B=1; F=0; 
               transienttime=[];  node_dist_perb=[];  deg_perb=[]; perturb_value=[];

    a1=par_1(i);
    b1=par_2(i);
      if i==1
          time_unperb=1500;
          time_perb=1500;
            else if (i==2)
          time_unperb=20;
          time_perb=20;
          
                     end
      end   
yinit=0.1+0.2*rand(1,Nosc);
deg=sum(A);
node=[1:1:100];      
Create_Sys_PD(3,m1,n1,A); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%% Without  perturbation %%%%%%%%%%%%%%%%%%%%   
[ystart1]=unperturb_PD(yinit,time_unperb,w);    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          xx=[];  
    transienttime=[];  node_dist_perb=[];  
    deg_perb=[]; perturb_value=[];
    deg_in=[]; deg_out=[];
 for jj=1:50
    fprintf('node_index=%d \n',jj)
    node_num=node(jj);     w=ones(1,m1*n1);
    w(node_num)=0.0;     perb_percent=0.1;
% %%%%%%%%%%%%%%%%%%% With  perturbation %%%%%%%%%%%%%%%%%%%%
[dt_pert1]=perturb_PD(ystart1,node_num,time_perb,w,perb_percent);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% Transient time %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
eta=0.7;
 [nn]=transient_measure(dt_pert1,node_num,A,eta);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%% Transient time along disatnec and degree saved %%%%%%%%%%%%
  node_dist=dist_path(node_num,1:end);
 transienttime=[transienttime;nn];
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
    %clear ;
 end
  