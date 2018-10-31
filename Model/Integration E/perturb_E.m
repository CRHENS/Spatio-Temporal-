function[dt_pert1]=perturb_E(ystart1,node_num,m1,n1,timestep_perb,w,perb_percent)
dt_pert1=[];   
tt1=0.0;
k1=1;
ystart=double(ystart1);
ystart(node_num)=double(ystart(node_num)+perb_percent*ystart(node_num));
max_diff_steady_state_pert=1;max_diff_steady_st=1;
op=odeset('Abstol',1e-12,'Reltol',1e-12);
 while(max_diff_steady_st>10^-11)    
   %[stru2] = ode45(@MM_net_pert_2000,[0 5000],ystart);
   [yt, wy] = ode45(@E_model,[tt1 tt1+timestep_perb],ystart,op);  
 max_diff_steady_state_pert=double(max((wy(end,1:end)-wy(end-1,1:end))./...
       (wy(end,1:end).*(yt(end)-yt(end-1)))));
 max_diff_steady_st=abs(double(max((wy(end,1:end)-wy(end-3,1:end)))));
   dt_pert1=[dt_pert1;yt, wy];
      ystart=double(dt_pert1(end,2:end)); 
           tt1=double(yt(end)); yt=[]; wy=[];                      
 end