clear
format long 
global a b c
a=20; c=32; b=4;
[T,Res]=lyapunov(3,@Bao1_LE,@ode45,0,0.01,10,[10 10 10],0);
plot(T,Res);