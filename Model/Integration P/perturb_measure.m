function [ss]=perturb_measure(dt_pert1,node_num)
dt_pert=dt_pert1(:,2:end); 
jh=dt_pert(1,1:end);
jh1=dt_pert(end,1:end); 
ss=jh1-jh;