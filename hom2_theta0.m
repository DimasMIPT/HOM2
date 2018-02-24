lp=404*10^(-9);
c=3*10^8;
[no,ne]=selmeier(lp);
wp=2*pi*c/lp;

filename='data\hom2_for_theta0.txt';
Res=dlmread(filename,' ');
ksi=Res(1,1:end);
F0=Res(4,1:end);

n=length(ksi);
m=20;
k=zeros(1,n);

theta1=zeros(m,n);
theta2=zeros(m,n);
w1=wp*(1+ksi)/2;
w2=wp*(1-ksi)/2;
f0=linspace(min(F0),1,m);

syms theta
for i=1:n
    disp(i);
    n1=selmeier(2*pi*c/w1(i));
    n2=selmeier(2*pi*c/w2(i));
    sin2_t2=(n1*(1+ksi(i))/n2/(1-ksi(i)))^2*sin(theta)^2;
    cos_t2=sqrt(1-sin2_t2);
for j=1:m
    if f0(j)>=(F0(i)+6*10^(-4))
    np0=ne*no/sqrt(no^2*sin(f0(j))^2+ne^2*cos(f0(j))^2);
    f=n1*(1+ksi(i))*cos(theta)+n2*(1-ksi(i))*cos_t2-2*np0;
    try
        theta1(j,i)=vpasolve(f==0,theta,[0,pi/2]);
        theta2(j,i)=asin(n1*(1+ksi(i))/n2/(1-ksi(i))*sin(theta1(j,i)));
    catch
        k(i)=j;
        break
    end
    end
end
end
dlmwrite('data\theta1.txt',theta1,' ');
dlmwrite('data\theta2.txt',theta2,' ');
dlmwrite('data\f0.txt',f0,' ');