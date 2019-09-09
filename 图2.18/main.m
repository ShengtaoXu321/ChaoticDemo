%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:��������Baoϵͳ�����ͼ    
%%%User:��ٝ�                                    
%%%Time:2019-8-26                                 
%%%Discript:������                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function HyBao1_orbit
format long
tspan=0:(1*10^(-3)):100;
Y0=[10 10 10 10];
[t,y] = ode45('HyBao1',tspan,Y0);
plot3(y(1:end,3),y(1:end,2),y(1:end,1));
plot(y(20000:end,1),y(20000:end,3));
plot(y(20000:end,2),y(20000:end,3));
plot(y(20000:end,3),y(20000:end,4));
hold on