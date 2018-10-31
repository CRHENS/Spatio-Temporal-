function[ystart1]=unperturb_PD(yinit,timestep,w)
max_diff_steady_state=1;
%%%%%%%% Without perturbation %%%%%%%
 op=odeset('Abstol',1e-13,'Reltol',1e-13);
    k=1;
    z1=[];   tt=0.0;
while(max_diff_steady_state>10^-12)
 [yt_unperb, wy_unperb] = ode45(@P_model,[tt tt+timestep],yinit,op);
% %% cel1 = struct2cell(stru1);%  cel1=cel1(4,1);%  unperb_dat = cell2mat(cel1); 
 unperb_dat=wy_unperb;
 max_diff_steady_state=double(max((unperb_dat(end,1:end)-unperb_dat(end-1,1:end))./...
     (unperb_dat(end,1:end).*(yt_unperb(end)-yt_unperb(end-1)))));
 z1=[z1;yt_unperb, wy_unperb];
      yinit=double(unperb_dat(end,1:end)); 
      tt=double(yt_unperb(end));

    %   toc
            end

       ystart1=double(unperb_dat(end,1:end)); 