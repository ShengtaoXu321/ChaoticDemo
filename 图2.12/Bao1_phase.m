%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:画Bao系统相轨图与时序波形图    
%%%User:徐勝濤                                    
%%%Time:2019-8-26                                 
%%%Discript:主函数                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Bao1_phase
format long
tspan=0:(1*10^(-3)):100;
Y0=[10 10 10];  %%系统的初始值
[t,y]=ode45('Bao1',tspan,Y0);
%plot3(y(1:end,3),y(1:end,2),y(1:end,1));
%plot(y(1:end,1),y(1:end,2));
%plot(y(1:end,1),y(1:end,3));
%plot(y(1:end,2),y(1:end,3));
%plot(t,y(:,1));
plot(t,y(:,2));
hold on 

