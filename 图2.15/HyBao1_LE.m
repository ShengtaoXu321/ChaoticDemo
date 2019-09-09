%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Tile:画Bao系统的李雅普诺夫指数谱    
%%%User:徐勝濤                                    
%%%Time:2019-8-26                                 
%%%Discript:子函数                                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function dX=HyBao1_LE(t,X)
global a b c d
a=20;b=4;c=32;
x=X(1); y=X(2); z=X(3);w=X(4);
Y= [X(4), X(7), X(10);
    X(5), X(8), X(11);
    X(6), X(9), X(12)];
dX=zeros(9,1);
%% 混沌系统方程
dX(1)=a*(x-y);
dX(2)=x*z-c*y;
dX(3)=x*x-b*z;
%% Jacobi矩阵
Jaco= [ a  -a  0;
        z  -c  x;
       2*x  0  -b];
dX(4:12)=Jaco*Y
