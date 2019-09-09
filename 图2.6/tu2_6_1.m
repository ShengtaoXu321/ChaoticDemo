%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:b=1.8ʱ��ά��������ɢӳ�亯�������a�仯�ķֲ�ͼ       
%%%User:��ٝ�                                    
%%%Time:2019-8-26                                 
%%%Discript:״̬����Ϊy                                      
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