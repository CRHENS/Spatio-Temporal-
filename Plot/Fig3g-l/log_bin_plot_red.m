
function log_bin_plot(xx,spacing_step_infull_data,C)
 xx1=xx(:,3);% C1={[0 0 0]};
  xx1 = xx1(xx1~=0);
 len=length(xx1); 
    spacing=logspace(log10(min(xx1)+0.01),log10(max(xx1)),100);
  [bincounts, binidx] = histc(xx1,spacing');
  plot(smooth(spacing),smooth((bincounts)/len),'linewidth',2,'color',C{1});
