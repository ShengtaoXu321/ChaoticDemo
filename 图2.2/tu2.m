%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:a=10时一维离散映射随参数b变化的分岔图       
%%%User:徐勝濤                                    
%%%Time:2019-8-26                                 
%%%Discript:                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;clc
a=10;
for m=1:1001
    b=-1+0.002*(m-1);
    x(1)=0;
    for n=1:4000
        x(n+1)=b*exp(-a*x(n)^2)-b*x(n)^2;
    end
    y(m,:)=x(end-100:end);
    H=plot(b*ones(1,length(y(m,:))),y(m,:));
    set(H,'linestyle','none','marker','.','markersize',3)
    hold on 
    drawnow
end