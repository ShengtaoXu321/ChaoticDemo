%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:画超混沌Bao系统Lyapunov指数谱   
%%%User:徐勝濤                                    
%%%Time:2019-8-26                                 
%%%Discript:主函数                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
format long
global d
for i=1:1:401
    d=0.2*(i-1);
    [T,Res]=lyapunov(4,@HyBao1_LE,@ode45,0,0.5,600,[10 10 10 10],0);
    Lyapunov1(i) = Res(end,1);
    Lyapunov2(i) = Res(end,2);
    Lyapunov3(i) = Res(end,3);
    Lyapunov4(i) = Res(end,4);
end
cc_val=0.2*([1:1:401]-1);
plot(cc_val,Lyapunov1(:));hold on
plot(cc_val,Lyapunov2(:));hold on
plot(cc_val,Lyapunov3(:));hold on
plot(cc_val,Lyapunov4(:));hold on

    