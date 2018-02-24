filename='data\hom2_for_theta0.txt';
lp=404*10^(-9); %Длина волны накачки.
c=3*10^8;
[no,ne]=selmeier(lp);
n=100;
% a=0.93922;
a=0.93;
wp=2*pi*c/lp;
w1=linspace(wp*(1-a)/2,wp*(1+a)/2,n);
F0=zeros(1,n);
n_eff=zeros(1,n);
syms f0
np0=ne*no/sqrt(no^2*sin(f0)^2+ne^2*cos(f0)^2);
for i=1:n
    disp(i);
    n_eff(i)=(selmeier(2*pi*c/w1(i))*w1(i)+selmeier(2*pi*c/(wp-w1(i)))*(wp-w1(i)))/wp;
    f=n_eff(i)-np0;
    F0(i)=vpasolve(f==0,f0,[0,pi/2]);
end
ksi=2*w1/wp-1;
p=polyfit(ksi(floor(end/4):floor(3*end/4)),n_eff(floor(end/4):floor(3*end/4)),2);
P=polyval(p,ksi);
Res=[ksi;(n_eff-1.6611)*1000;(P-1.6611)*1000;F0];
dlmwrite(filename,Res,' ');