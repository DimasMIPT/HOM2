function [P2,P0]=hom2_expan
syms a
l=2*0.4047/(1+a);
no=(2.7405 + 0.0184/(-0.0179 + l^2) - 0.0155*l^2)^0.5;
p0=taylor(no,a,0,'Order',1);
p1=taylor(no,a,0,'Order',2)-p0;
p2=taylor(no,a,0,'Order',3)-p1;
p0=double(subs(p0,a,1));
p1=double(subs(p1,a,1));
p2=double(subs(p2,a,1));
P2=p2+p1;
P0=p0;