%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:b=1.8时二维抛物线离散映射函数随参数a变化的分岔图       
%%%User:徐勝濤                                    
%%%Time:2019-8-26                                 
%%%Discript:状态变量为y                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;clc
b=1.8;
for m=1:1001
    a=0.2+0.002*(m-1);
    x(1)=0;
    y(1)=0.1;
    for n=1:500
        x(n+1)=a*(y(n))^2;
        y(n+1)=b*y(n)*(1-x(n));
    end
    %z(m,:)=x(end-100:end);     
    z(m,:)=y(end-100:end);
    H=plot(a*ones(1,length(z(m,:))),z(m,:));
    set(H,'linestyle','none','marker','.','markersize',3)
    hold on
    drawnow
end