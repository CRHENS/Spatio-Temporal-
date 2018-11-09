% Copyrigth to Chittaranjan Hens, Uzi Harush and Baruch's lab

%clear all
 par_1=[0.4]; 
 par_2=[0.2];
for i=1
 global R B alpha h1 w A  
  load A.mat;   %%%% Network 
 m1=length(A); n1=1;
    mm=1; Nosc=m1*n1; 
    w=ones(1,m1*n1);
R=1;B=1; 
  alpha=par_1(i); %% parameter
  h1=par_2(i);    %% parameter
  if i==1
          time_unperb=1500;
          time_perb=1200;  
      else if (i==2)
             time_unperb=100;
          time_perb=100;          
                     end
  end
Create_System_R_2(3,m1,n1,A);
%%%%% distance %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
deg=sum(A);
dist_path=pathlength(A);
yinit=0.1+0.1*rand(length(A),1);
node=1:1:50; %%Perturbation in first 500 nodes
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     %%%%%%%%%Without Pertubation%%%%%%%%%%%%%%%%%
[ystart1]=unperturb_R_2(yinit,time_unperb,w);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        transienttime=[];  node_dist_perb=[];  deg_perb=[]; perturb_value=[];    
       for jj=1:length(node)
       fprintf('node_index=%d \n',jj)
    node_num=node(jj);
    w=ones(1,m1*n1);     w(node_num)=0.0;     perb_percent=0.1;
% %%%%%%%%%%%%%%%%%%% With  perturbation %%%%%%%%%%%%%%%%%%%%
[dt_pert1]=perturb_R_2(ystart1,node_num,m1,n1,time_perb,w,perb_percent);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 eta=0.7;
%%%%%%%%%%%%%%%%% Transient time %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[nn]=transient_measure(dt_pert1,node_num,deg,eta);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Transient time with pathlength and degree saved %%%%%%%%%%%%
 node_dist=dist_path(node_num,1:end);
 transienttime=[transienttime;nn];
 perturb_value=[perturb_value;ss];
 node_dist_perb=[node_dist_perb;node_dist];
 deg_perb=[deg_perb;deg];
 toc;
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
   clear;
end