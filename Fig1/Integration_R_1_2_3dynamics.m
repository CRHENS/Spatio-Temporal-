%clear all
 par_1=[ 1; 0.5; 3]; 
 par_2=[ 1; 1; 0.5];
for i=1:3
  global R B alpha h1 w A  
 load A_Fig1.mat;   %%%% Network 
 m1=length(A); n1=1;
    mm=1; Nosc=m1*n1; 
    w=ones(1,m1*n1);
R=1;B=1; 
   alpha=par_1(i); %% parameter
   h1=par_2(i);    %% parameter
  if i==1
          time_unperb=50;
          time_perb=50;  
      else if (i==2)
             time_unperb=100;
          time_perb=100;
           else if (i==3)
             time_unperb=30;
          time_perb=30;
          end
                     end
  end
Create_System_R(3,m1,n1,A);
%%%%% distance %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
deg=sum(A);
dist_path=pathlength(A);
yinit=0.1+0.1*rand(length(A),1);
node=5; %%Source Node
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     %%%%%%%%%Without Pertubation%%%%%%%%%%%%%%%%%
[ystart1]=unperturb_R_1_2_3(yinit,time_unperb,w);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        transienttime=[];  node_dist_perb=[];  deg_perb=[]; perturb_value=[];    
       for jj=1:length(node)
       fprintf('node_index=%d \n',node(jj))
    node_num=node(jj);
    w=ones(1,m1*n1);     w(node_num)=0.0;     perb_percent=0.1;
% %%%%%%%%%%%%%%%%%%% With  perturbation %%%%%%%%%%%%%%%%%%%%
[dt_pert1]=perturb_R_1_2_3(ystart1,node_num,m1,n1,time_perb,w,perb_percent);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  file_name=sprintf('dt_pert_R_1_2_3_h_%g_alpha%g_node%g.mat',h1,alpha,node_num);
  save(file_name,'dt_pert1'); 

 eta=0.7;
%%%%%%%%%%%%%%%%% Transient time %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[nn]=transient_measure(dt_pert1,node_num,A,eta);
%[ss]=perturb_measure(dt_pert1,node_num);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xx=[nn];
%  %dt_pert1=[];  xx=[];
  file_name=sprintf('trans_R_1_2_3_h_%g_alpha%g_node%g.mat',h1,alpha,node_num);
  % file_name=sprintf('Degree_Dist_T.mat');
  
   save(file_name,'xx'); 
    dt_pert1=[];xx=[];
  % clear;
       end
end