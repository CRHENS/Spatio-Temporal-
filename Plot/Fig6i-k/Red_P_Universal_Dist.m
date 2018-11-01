%userpath('C:\Users\User\Desktop\project_aug_sept_16\Data_folder_tau_s_D')
%clear all
ll=[];
theta=1;
 source1=[1:1:100];% 5 6 7 8 9 10 922 1444 2035 3315 2926];
%%% userpath('C:\Users\User\Desktop\project_aug_sept_16\All_dynamics\SIS_all\airport_network\USA_airport_network_vespignanai\codes')
load('A.mat')
 max_dist=max(max(pathlength(A)));
 Eq_val_res_dist_deg=[]; rr=10; 
 for jk=1:length(source1)
    for g=1:rr
    source=source1(jk);
    dist_s_t=[]; pp=[];
    p1=1.01+1.1*rand(length(A),length(A));
    if g==1
        A1=A;
    else 
    A1=p1.*A;
    end
    [dist,P]=dijkstra(A1,source,[]);
    intermediate_nodes = P;
    shortest_path=num2cell(dist);
    B=A;  V=[];
   for j=1:max_dist+1 %% max path lengths 
   C=B^j;
   V=[V;C(source,:)];
   C=[];
   end
Q=V;
zz(1,1:length(A))=0;
  for j=1:max_dist
  ind= find(Q(j,:)>0);
  zz(ind)=Q(j,ind);
  Q(j+1:end,ind)=0;
  ind=[];
  end
Q=[];V=[];
zz(source)=0;
num_pathlengths = num2cell(zz);
deg1=num2cell(sum(A));
pp=[intermediate_nodes;  shortest_path; num_pathlengths; deg1];
zz=[];
ll=[ll;pp]; 
 end
 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Eq_val_res_dist_deg=[];
 
deg1=num2cell(sum(A));
 for js=1:length(source1)
     res_all(1:length(A))=0;
     data1=[ll((source1(js)-1)*rr*4+1:4:source1(js)*rr*4,:); ll((source1(js)-1)*rr*4+2,:); ll((source1(js)-1)*rr*4+3,:); deg1];
deg=sum(A);
index_numpath_all=find(cell2mat(data1(rr+2,:))>=0);
zz2=data1(1:rr,index_numpath_all);resistance_all_paths=[];
for  j1=1:length(zz2)
   Q1=zz2(:,j1);
   for ll1=1:rr
   kl2= cell2mat(Q1(ll1));
   resistance_all_paths(ll1)=sum((deg(kl2(1,2:end))).^theta);
   kl2=0;
   end
   min_res=min(resistance_all_paths);
   res_all(index_numpath_all(j1))=min_res;
   uu=resistance_all_paths;
   min_res=0; resistance_all_paths=[];
 end
%  ind_inf=find(res_all==inf);
%  res_all(ind_inf)=8000;
 Eq_val_res_dist_deg=[Eq_val_res_dist_deg;   ...
     cell2mat(data1(rr+1,:));  cell2mat(deg1); res_all;  cell2mat(data1(rr+2,:))];
data1=[];res_all=[];
end
pp=Eq_val_res_dist_deg; 
Aw=pp(1:4:end,:)'; 
Bw=pp(2:4:end,:)';
Cw=pp(3:4:end,:)';
Dw=pp(4:4:end,:)';
L=[Aw(1:end); Bw(1:end); Cw(1:end); Dw(1:end)];
L=L';
Plot_Red_R_2_P_T_vs_Universal_Dist