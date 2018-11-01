
function [p]= T_vs_D_linbin(xx,ii,C,shift)
 jk=0;

index=find(xx(1:end,2)>=1);
transient_time=xx(index,3);
distn=xx(index,2);
degree=xx(index,1);
 y2=transient_time(~(transient_time==0));
  x2=distn(~(transient_time==0));
  
  data=[x2 y2]; %data=data';
%[cool ]=bins(data,25);
[binned_data]=linearbinn(data);
%
ind = find(~isnan(binned_data(:,1)));
hg=[(binned_data(ind,1)) (binned_data(ind,2))];
  x=(hg(1:end-2,1)); y=(hg(1:end-2,2));
    p=plot(x, y+shift,'-o', 'linewidth',2,'color',C{ii});
    hold on 
   %errorbar(binned_data(:,1),binned_data(:,2)+shift,binned_data(:,3),'linewidth',2,'color',C{ii})
  % errorbar(binned_data(:,1),binned_data(:,2)+shift,binned_data(:,3),'linewidth',2,'color',C{ii})
plot(binned_data(:,1),binned_data(:,2)+shift,'linewidth',2,'color',C{ii})

   legend('off')
   hold on
 jk=jk+1;
%     plot(x2,y2,'.')
%  hold on;
