filename='data\hom2_coll.txt';

Res=dlmread(filename,' ');
ksi=Res(1,1:end);
n_eff=Res(2,1:end)/1000+1.6611;
P=Res(3,1:end)/1000+1.6611;
F0=Res(4,1:end);

h=figure(1);
plot(ksi,n_eff,ksi,P);hold on;grid on;
hom2_temp2d(h,'$\xi$','$n_{eff}$');

h=figure(2);
plot(ksi,F0);hold on;grid on;
hom2_temp2d(h,'$\xi$','$\varphi_0$');