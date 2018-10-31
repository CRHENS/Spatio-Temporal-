function lin_bin_plot_blue(xx,spacing_step_infull_data,C)
 xx1=xx(:,3); 
 xx1 = xx1(xx1~=0);
 len=length(xx1); 
%  xx2=[]; xx_tran=[];index=[];
%  for jk=1:D
% index=find(xx(:,2)==jk);
% xx2=[xx(index,1)  xx(index,3)];
% xx_tran=xx2(:,2); 
%  xx_tran = xx_tran(xx_tran~=0);
% len1=length(xx2);
% % if (jk==5|| jk==6 || jk==8)
% % bin_num1=500;
% % else
% %     bin_num1=500;
% % end
%  function_lin_bin(xx_tran,bin_num,2,len,jk,C,spacing_step_infull_data);
%  hold on;
%  xx2=[]; xx_tran=[];index=[];
%  end
% function_lin_bin(xx1,bin_num_all,2,len,1,C1,spacing_step_infull_data);
  spacing=linspace((min(xx1)),(max(xx1)),floor((max(xx1)-min(xx1))./spacing_step_infull_data));
  %spacing=linspace((min(xx)),(max(xx)),bin_num);
  [bincounts, binidx] = histc(xx1,spacing');
  plot(smooth(spacing),smooth((bincounts)/len),'linewidth',2,'color',C{2});
 
%   legend('D=1','D=2','D=3','D=4','D=5','D=6','D=7','D=8','D=9','D=10','');
  axis tight
  hold on;