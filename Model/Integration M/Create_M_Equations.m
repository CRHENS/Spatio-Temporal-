
function Create_M_Equations(mode,m1,n1,A);
       if (mode==0)
        A1=scale_free(n);
    elseif (mode==1)
        %A=A_erdos(n);
        %%%% fixed degree in random natwork %%%%
        A1=createRandRegGraph(m1*n1,k_deg);
          elseif (mode==2)
         A1=smallw(m1*n1,k_deg,p);
         elseif (mode==3)
       %  A1=erdrey(m1*n1);
    %   A=pref(m1*n1,1)
%         A=twod_smallw(m1,n1,p);
       end
    fileID = fopen('M_model.m','w+');
  fprintf(fileID,'%0s\n','function dy=M_model(t,x)');
fprintf(fileID,'%0s\n','global B K D H E w p1 A');
 fprintf(fileID,'%0s','dy=zeros(');
 fprintf(fileID,'%0d',m1*n1);
  fprintf(fileID,'%0s\n',',1);');
    for i=1:m1*n1
       fprintf(fileID,'%0s','dy(');
        fprintf(fileID,'%0d',i);
         fprintf(fileID,'%0s',')=');
         fprintf(fileID,'%0s','w(');
         fprintf(fileID,'%0d',i);
          fprintf(fileID,'%0s',')*(');
         fprintf(fileID,'%0s','B+(x(');
         fprintf(fileID,'%0d',i);
          fprintf(fileID,'%0s',')*(1-((x(');
          fprintf(fileID,'%0d',i);
%          fprintf(fileID,'%0s',')/K))*(M*(x(');
%             fprintf(fileID,'%0d',i);
%          fprintf(fileID,'%0s',')/C)-1))');
          fprintf(fileID,'%0s',')^p1)/K)))');
         
                  for j=1:m1*n1
                if (A(i,j)~=0 & i~=j)
                 fprintf(fileID,'%0s','+A(');
                 fprintf(fileID,'%0d',i);
                  fprintf(fileID,'%0s',',');
                   fprintf(fileID,'%0d',j);
                  fprintf(fileID,'%0s',')*');
                 fprintf(fileID,'%0s','(x(');
                 fprintf(fileID,'%0d',j);
                 fprintf(fileID,'%0s',')*x(');
                 fprintf(fileID,'%0d',i);
                 fprintf(fileID,'%0s','))/(D+E*x(');
                 fprintf(fileID,'%0d',i);
                 fprintf(fileID,'%0s',')+H*x(');
                 fprintf(fileID,'%0d',j);
                 fprintf(fileID,'%0s','))');
             end
         end
         fprintf(fileID,'%0s\n',');');
    end
    fclose(fileID);
end