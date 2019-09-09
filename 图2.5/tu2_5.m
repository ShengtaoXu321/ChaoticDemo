%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:二维抛物线离散映射随参数b变化的分岔图       
%%%User:徐勝濤                                    
%%%Time:2019-8-26                                 
%%%Discript:                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clear;clc
a=1;
for m=1:1001
    b=0.8+0.0012*(m-1);
    x(1)=0;
    y(1)=0.1;     %y(1)=-0.1;
    for n=1:500
        x(n+1)=a*(y(n))^2;
        y(n+1)=b*y(n)*(1-x(n));
    end
    z(m,:)=y(end-100:end);
    H=plot(b*ones(1,length(z(m,:))),z(m,:));
    set(H,'linestyle','none','marker','.','markersize',3)
    hold on
    drawnow
end
    