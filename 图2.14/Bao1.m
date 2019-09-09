function dy=Bao1(t,y)
dy=zeros(3,1);
a=20;b=4;c=32;  %%System parameters
dy(1)=a*(y(1)-y(2));
dy(2)=y(1)*y(3)-c*y(2);
dy(3)=y(1)*y(1)-b*y(3);