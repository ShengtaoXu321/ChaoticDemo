%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:画超混沌Bao系统Lyapunov指数谱   
%%%User:徐勝濤                                    
%%%Time:2019-8-26                                 
%%%Discript:子函数                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function dX=HyBao1_LE(t,X)
global a b c d
a=20;b=4;c=32;
x=X(1);y=X(2);z=X(3);w=X(4);
Y= [X(5)  X(9)  X(13)  X(17);
   X(6)  X(10)  X(14)  X(18);
   X(7)  X(11)  X(15)  X(19);
   X(8)  X(12)  X(16)  X(20)];
dX=zeros(16,1);
%%混沌电路方程
dX(1) = a*x-a*y-w;
dX(2) = x*z-c*y;
dX(3) = x*x-b*z;
dX(4) = d*x;
%%Jacobi 矩阵
Jaco = [ a  -a  0  -1;
         z  -c  x   0;
        2*x  0  -b  0;
         d   0  0   0];
dX(5:20) = Jaco*Y;

         
