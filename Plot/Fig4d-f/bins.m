function [bin q]=bins(data,B);
      %%%%%%%%%%%%%%%%%%%
     %Clustering 'data' with exp factor %
     %%%%%%%%%%%%%%%%%%%
                    %input
    % data- the data that i analyzes [array (n,2)]
    % B- the nameber of bins.
                    %output
    % bin- Clustering the data
    % q- bin factor
    
    max_x=max(data(:,1))*(10^1+1);
    min_x=min(data(:,1))-(10^-4);
    n=size(data,1);
    
    q=nthroot(max_x/min_x,B);   %% solve the equation max_x=min_x*q^B
    
    bin=zeros(B,4);
    
    for i=1:n
        temp=floor(log(data(i,1)/min_x)/log(q))+1;   %find what bin data(i,1) belongs to.
        if (temp>0 && temp <B+1)
        bin(temp,1)=bin(temp,1)+data(i,1);             % sum the node that belongs to the bin
        bin(temp,2)=bin(temp,2)+data(i,2);             % sum the node that belongs to the bin
        bin(temp,3)=bin(temp,3)+data(i,2)^2;           % count the node that belongs to the bin
        bin(temp,4)=bin(temp,4)+1;                           % count the node that belongs to the bin
        end
    end
    bin(:,1)=bin(:,1)./bin(:,4);                     % make a avreage
    bin(:,2)=bin(:,2)./bin(:,4);                     % make a avreage
  %  bin(:,3)=sqrt(bin(:,3)./bin(:,4)-bin(:,2).^2); 
  %bin(cellfun(@isnan, bin)) = [];
  %  loglog(bin(:,1),bin(:,2),'o'),%'o','Color',[rand rand rand])
%     A1=bin(:,1);
%     A2=bin(:,2);
%  A1(isnan(A1))= []; A2(isnan(A2))= [];
%  figure; loglog(A1,A2,'o','Color',[rand rand rand])
end