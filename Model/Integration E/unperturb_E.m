function[ystart1]=unperturb_E(yinit,timestep,w)
max_diff_steady_state=1;
max_diff_steady_st=1;
%%%%%%%% Without perturbation %%%%%%%
 op=odeset('Abstol',1e-12,'Reltol',1e-12);
    %fprintf('timetaken=%d',timestep)
    k=1;
    z1=[];   tt=0.0;
while(max_diff_steady_st>10^-11)
 [yt_unperb, wy_unperb] = ode45(@E_model,[tt tt+timestep],yinit,op);
 unperb_dat=wy_unperb;
 max_diff_steady_state=double(max((unperb_dat(end,1:end)-unperb_dat(end-1,1:end))./...
     (unperb_dat(end,1:end).*(yt_unperb(end)-yt_unperb(end-1)))));
  max_diff_steady_st=abs(double(max((unperb_dat(end,1:end)-unperb_dat(end-3,1:end)))));
 %z1=[z1;yt_unperb, wy_unperb];
      yinit=double(unperb_dat(end,1:end)); 
      tt=double(yt_unperb(end));
   
end
       ystart1=double(unperb_dat(end,1:end)); 