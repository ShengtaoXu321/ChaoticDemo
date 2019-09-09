%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:画Bao系统的庞加莱映射   
%%%User:徐勝濤                                    
%%%Time:2019-8-26                                 
%%%Discript:主函数                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
format long
dt=0.001;
tspan=(0:dt:1000);
Y0=[10 10 10];

sol=ode45(@Bao1,[tspan(1) tspan(end)],Y0);
ss=deval(sol,tspan)';
s=ss(1000:end,:);

aa=0;
bb=0;
cc=1;
p=-32;  %%平面方程,aa*x+bb*y+cc*z+p=0;
func=((aa*s(:,1))+(bb*s(:,2))+(cc*s(:,3))+p)>0;
func_n=(func(1:end-1)>0)&(xor(func(1:end-1),func(2:end)));
m=find(func_n==1);
t_intsec=-(aa*s(m,1)+bb*s(m,2)+cc*s(m,3)+p)./(aa*(s(m+1,1)-s(m,1))+bb*(s(m+1,2)-s(m,2))+cc*(s(m+1,3)-s(m,3)));
x_map=s(m,1)+(s(m+1,1)-s(m,1)).*t_intsec;
y_map=s(m,2)+(s(m+1,2)-s(m,2)).*t_intsec;
z_map=s(m,3)+(s(m+1,3)-s(m,3)).*t_intsec;

H=plot(x_map,y_map);
set(H,'linestyle','none','marker','.','markersize',5)
hold on
drawnow
