%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:画超混沌Bao系统的庞加莱映射    
%%%User:徐勝濤                                    
%%%Time:2019-8-26                                 
%%%Discript:主函数                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
format long
dt=0.001;
tspan=(0:dt:1000);
Y0=[10 10 10 10];      %%四维系统的初始值
sol=ode45(@HyBao1,[tspan(1) tspan(end)],Y0);
ss=deval(sol,tspan)';
s=ss(10000:end,:);
%%画四维系统的庞加莱映射，可延伸到五维系统甚至更高维系统
%%设有两点（x0,y0,z0,u0）,（x1,y1,z1,u1）,则有方向向量（a1,b1,c1,d1）
%%a1=x1-x0;b1=y1-y0;d1=u1-u0;此两点确定的直线可以表示为
%%参数形式：x=x0+a1*t;y=y0+b1*t;z=z0+c1*t;u=u0+d1*t;
%%将此点代入一个平面方程aa*x+bb*y+cc*z+dd*u+p=0;
%%求得交点t=-(aa*x0+bb*y0+cc*z0+dd*u0+p)
%%       /(aa*(x1-x0)+bb*(y1-y0)+cc*(z1-z0)+dd*(u1-u0));
aa=1;
bb=0;
cc=0;
dd=0;
p=0;  %%平面方程aa*x+bb*y+cc*z+dd*u+p=0;
%a=20;b=4;c=32;d=4;
func=((aa*s(:,1))+(bb*s(:,2))+(cc*s(:,3))+(dd*s(:,4))+p)>0;
func_n=(func(1:end-1)>0)&(xor(func(1:end-1),func(2:end)));
m=find(func_n==1);
t_intsec = -(aa*s(m,1)+bb*s(m,2)+cc*s(m,3)+dd*s(m,4)+p)./(aa*(s(m+1,1)-s(m,1))+bb*(s(m+1,2)-s(m,2))+cc*(s(m+1,3)-s(m,3))+dd*(s(m+1,4)-s(m,4)));
x_map4=s(m,1)+(s(m+1,1)-s(m,1)).*t_intsec;
y_map4=s(m,2)+(s(m+1,2)-s(m,2)).*t_intsec;
z_map4=s(m,3)+(s(m+1,3)-s(m,3)).*t_intsec;
w_map4=s(m,4)+(s(m+1,4)-s(m,4)).*t_intsec;
figure(1)
H1=plot(y_map4,z_map4);    %%画庞加莱映射

set(H1,'linestyle','none','marker','.','markersize',5)
figure(2)
H2=plot(x_map4,y_map4);    %%画庞加莱映射
set(H2,'linestyle','none','marker','.','markersize',5)
hold on
drawnow
