%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:二维离散映射随参数b变化时的特征值运动轨迹    
%%%User:徐勝濤                                    
%%%Time:2019-8-26                                 
%%%Discript:特征值轨迹                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc
a=1;
%for m=1:81
for m=1:51
    %b=0.2+0.01*(m-1);
    b=1+0.01*(m-1);
    x(1)=0;y(1)=0.1;
    for n=1:500
        x(n+1)=a*y(n)*y(n);
        y(n+1)=b*y(n)*(1-x(n));
        %%求Jacobi矩阵元素
        j11=0;
        j12=2*a*y(n);
        j21=-b*y(n);
        j22=b*(1-x(n));
    end
    J=[j11,j12;j21,j22];
    [v1,d1]=eig(J);
    dd=diag(d1);
    Re1(n)=real(dd(1));
    Im1(n)=imag(dd(1));
    Re2(n)=real(dd(2));
    Im2(n)=imag(dd(2));
    
    t=linspace(-1,1,5000)*pi;
    x1=cos(t);y1=sin(t);plot(x1,y1,':');
    hold on
    %%以上三行程序句画单位圆
    plot(Re1(end:end),Im1(end:end),'+',Re2(end:end),Im2(end:end),'*')
    hold on
    drawnow
end
