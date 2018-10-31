clear all
 par_1=[2.5 ;2]; 
 par_2=[0.3 ;1];
  %%% ( s,g) = (2.5,0.5), %% g :coupling strength
for i=1
 global alpha B s g w A %% s=C (See in main text)
  load A.mat;  %%%% Network 
 m1=length(A); n1=1;
    mm=1; Nosc=m1*n1; 
% end
dist_path=pathlength(A);
m1=length(A);n1=1;
Nosc=m1*n1; 
w=ones(1,m1*n1); 
B=2; alpha=1;
 s=par_1(i);
 g=par_2(i); 
  if i==1
          time_unperb=40;          time_perb=40;       
          else if (i==2)
             time_unperb=400;           time_perb=400;
             
           else if (i==3)
             time_unperb=200;           time_perb=200;
               end
              end
  end
yinit=0.1+0.2*rand(1,Nosc);
deg=sum(A);
node=[1:1:100];
%clear neural_network_model 
Create_System_neural_network(3,m1,n1,A);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     %%%%%%%%%Without Pertubation%%%%%%%%%%%%%%%%%
[ystart1]=unperturb_NN(yinit,time_unperb,w);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         xx=[];  
    transienttime=[];  node_dist_perb=[];  
    deg_perb=[]; perturb_value=[];
    deg_in=[]; deg_out=[];
 for jj=1:50
  %  fprintf('node_index=%d, node_number=%d \n',node(jj),jj)
 fprintf('node_number=%d \n',jj)
    node_num=node(jj);     w=ones(1,m1*n1);
    w(node_num)=0.0;     perb_percent=0.1;
% %%%%%%%%%%%%%%%%%%% With  perturbation %%%%%%%%%%%%%%%%%%%%
 [dt_pert1]=perturb_NN(ystart1,node_num,time_perb,w,perb_percent);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
eta=0.7;
% %%%%%%%%%%%%%%%%% Transient time %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 [nn]=transient_measure(dt_pert1,node_num,A,eta);
 %%[ss]=perturb_measure(dt_pert1,node_num);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Transient time with pathlength and degree saved %%%%%%%%%%%%
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
  %file_name=sprintf('trans_Ndyna_g%g_s%g_N%g.mat',g,s,Nosc);
  file_name=sprintf('Degree_Dist_T.mat');
 save(file_name,'xx'); 
 clear
%  transienttime=[];  perturb_value=[];
%  node_dist_perb=[]; deg_perb=[];
%  xx=[];
end
