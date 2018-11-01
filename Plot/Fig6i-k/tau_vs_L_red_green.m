
function [raw_dataw raw_data binned_data indexs indexinf index_deg  index_dist]= tau_vs_L_red_green(xx,L,ii,C,shift,mn)
 jk=[];
    
node_all=find(xx(:,2)==0);
node_used=mod(node_all,length(L));

L_res=single(L(:,3));
L_node_used=L_res(1:end);
L_node_used=L_node_used';
L_node_used_final=(L_node_used(1:end));

L_num_pathlenghts=single(L(:,4));
L_pn=L_num_pathlenghts(1:end);
L_pn=L_pn';
L_pn=(L_pn(1:end));

xx1=(xx(:,3))';  y_tran=xx1(~(xx1==0));
xx2=(xx(:,1))';  y_deg=xx2(~(xx1==0));
%xx3=(xx(:,3))';  y_dissip=xx3(~(xx1==0));
xx4=(xx(:,2))';  y_dist=xx4(~(xx1==0));
x_L=L_node_used_final(~(xx1==0));
x_L_4=L_pn(~(xx1==0));
X_L_log= (x_L*mn);
%X_L_log= (x_L);
% raw_dataw=[y_tran;  X_L_log;  y_deg; y_dissip; y_dist];
  raw_dataw=[X_L_log; y_tran; y_deg; y_dist];
% raw_dataw=[y2; log(x2*10000000); y3];
 raw_dataw=raw_dataw';
indexinf=find(raw_dataw(:,2)==inf);
%%%raw_dataw(indexinf,2)=20;
index_deg=find(y_deg>=1);
index_dist=find(y_dist<=12);
length(index_dist);
 %index_dist=find(raw_dataw(:,1)<2000);
raw_data=[raw_dataw(index_dist,1) raw_dataw(index_dist,2)];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%raw_data(index_isola,:)=[];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  [binned_data]=bins1(raw_data,20);
% [binned_data]=linearbin(raw_data);
 indexs=find(raw_data(:,1)>0);
