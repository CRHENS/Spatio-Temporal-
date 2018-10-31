%% clear all
 %%load('A_scale_6000_gamma3.mat')
 function [p1,binned_data]= tau_vs_S_blue(xx,ii,C,shift)
%xx=xc;
  jk=[];
% distn=xx(1:end,2);

index=find(xx(1:end,2)==1);
transient_time=xx(index,3);
distn=xx(index,2);
degree=xx(index,1);

  y2=transient_time(~(transient_time==0));
  x2=degree(~(transient_time==0));
  
  zz=[x2 y2]; zz=zz';
  %zz1=[(zz(1,:)); 1./((zz(2,:))).^(3/2)];
    zz1=[(zz(1,:)); ((zz(2,:)))];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[binned_data]=bins1(zz1',20); 
ind = find(~isnan(binned_data(:,1)));
hg=[(binned_data(ind,1)) (binned_data(ind,2)) (binned_data(ind,3))  ];
x=(hg(1:end-1,1)); y=(hg(1:end-1,2));  z=(hg(1:end-1,3)); 
 
p1=loglog(x,y*shift,...
   'o','linewidth',4,'color',C{ii});
  
 hold on
p = polyfit(log(x(1:end)), log(y(1:end)),1)
jk=[jk;p(1)];
%%y_hat = exp(p(1) * log(x(data_len:data_len_end)) + p(2));
y_hat1 = exp(0*log(x(1:end))+0.8);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 loglog(x(1:end), y_hat1(1:end)*4,'linewidth',4,'color',[0 0 0]); hold on;
 