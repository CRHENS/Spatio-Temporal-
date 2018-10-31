function [nn]=transient_measure(dt_pert1,node_num,A,eta)

xx=[];sv=[];
dt_pert=dt_pert1(:,2:end); 
jh=dt_pert(1,1:end);
jh1=dt_pert(end,1:end); 
ss=jh1-jh;ss1=ss*eta; jh_pt5=jh+ss1; jh_pt5=double(jh_pt5);
for k=1:length(A)
    lk=dt_pert(1:end,k);    lk1=jh_pt5(k);    s1=double(lk-lk1);
     [value, index] = min(reshape(abs(s1), numel(abs(s1)), 1));
[tt1,tt2] = ind2sub(size(s1), index);s1=[]; sv=[sv;node_num,tt1,tt2];
end
 time_perb=dt_pert1(:,1);
for j=1:length(A); sv_2=sv(j,2); nn(j)=time_perb(sv_2); end