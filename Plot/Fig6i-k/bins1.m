function [bin q]=bins1(data,B);
      %%%%%%%%%%%%%%%%%%%
     %Clustering 'data' with exp factor %
     %%%%%%%%%%%%%%%%%%%
                    %input
    % data- the data that i analyzes [array (n,2)]
    % B- the nameber of bins.
                    %output
    % bin- Clustering the data
    % q- bin factor
    max_x=max(data(:,1));
    min_x=min(data(:,1));
    n=size(data,1);
    
    q=nthroot(max_x/min_x,B);   %% solve the equation max_x=min_x*q^B
    
    x_q=min_x*ones(B,1);
    for i=2:B
        x_q(i)=x_q(i-1)*q;
    end

    x=data(:,1);
    y=data(:,2);
    bin1=zeros(B-1,3);
    for i=2:B
        data_1=x(x>x_q(i-1) & x<x_q(i));
        bin1(i-1,1)=mean(data_1);
        data_1=y(x>x_q(i-1) & x<x_q(i));
        bin1(i-1,2)=mean(data_1);
        bin1(i-1,3)=1.96*std(data_1)/size(data_1,1)^0.5;
    end
    bin=bin1(~isnan(bin1(:,1)),:);    
%     errorbar(bin(:,1),bin(:,2),bin(:,3),'o')
%     set(gca,'xscale','log','yscale','log')
end





