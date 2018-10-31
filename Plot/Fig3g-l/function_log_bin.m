function function_log_bin(xx1,bin_num,mode,len,ii,C,spacing_step_infull_data)
 if (mode==0)
  %spacing=logspace(log10(min(xx)+0.001),log10(max(xx)),bin_num);
  spacing=floor(log(max(xx1))-log(min(xx1)+0.01))./spacing_step_infull_data;
  [bincounts, binidx] = histc(xx1,spacing');
 loglog(smooth(spacing),smooth(bincounts),'linewidth',2,'color',C{ii});

%    elseif (mode==1)
%   spacing=logspace(log10(min(xx)+0.001),log10(max(xx)),bin_num);
%  [bincounts, binidx] = histc(xx,spacing');
%  semilogx(smooth(spacing),smooth((bincounts)/len),'linewidth',2,'color',C{ii});
%spacing=floor(log(max(xx))-log(min(xx)+1))./spacing_step_infull_data;
  elseif (mode==2)
   spacing=logspace(log(min(xx1)+0.01),log(max(xx1)),((log(max(xx1))-log(min(xx1)+0.01))./spacing_step_infull_data));
  %spacing=floor(log(max(xx))-log(min(xx)))./spacing_step_infull_data;
  [bincounts, binidx] = histc(xx1,spacing');
  semilogx(smooth(spacing),smooth((bincounts)/len),'linewidth',2,'color',C{ii});

 end