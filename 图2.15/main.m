%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:画Bao系统的李雅普诺夫指数谱   
%%%User:徐勝濤                                    
%%%Time:2019-8-26                                 
%%%Discript:主函数                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
format long
global a b c
a=20; c=32;
for i=1:1:501
    b=0.03*(i-1);
    [T,Res]=lyapunov(3,@Bao1_LE,@ode45,0,0.001,500,[10 10 10],0);
%plot(T,Res);  %%画随时间变化的Lyapunov指数谱
    Lyapunov1(i) = Res(end,1);
    Lyapunov2(i) = Res(end,1);
    Lyapunov3(i) = Res(end,1);
end
cc_val=0.03*([1:1:501]-1);
plot(cc_val,Lyapunov1(:));hold on
plot(cc_val,Lyapunov2(:));hold on
plot(cc_val,Lyapunov3(:));hold on