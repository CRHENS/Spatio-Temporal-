function [cool]=linearbinn(raw_data)
x=raw_data(:,1);
y=raw_data(:,2);
index_inf=find(y==inf);
y(index_inf)=[];
x(index_inf)=[];
index_infs=find(x==inf);
y(index_infs)=[];
x(index_infs)=[];
counter=1;
nbinmin = 20; % this is the threshold

for i=min(x)-0.1:0.5:max(x)
    bin= x>i &  x<= i+0.5;
    xbin(counter,1)  = mean(x(bin));

    % check if the number of 1s in bin is less than the threshold
    if length(bin(bin==1)) < nbinmin
        yy(counter,1)    = NaN;
    else
        yy(counter,1)    = mean(y(bin));
   
    end
 zz(counter,1)=1.96*std(y(bin))/size(y(bin),1)^0.5;
   
    counter = counter+1;
end
cool=[xbin  yy zz];