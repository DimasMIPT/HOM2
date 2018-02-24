n=300;
xi=linspace(-10,10,n);
eta=linspace(-3,3,n);
P=zeros(n);
for i=1:n
    disp(i);
    for j=1:n
        P(i,j)=0.5*(1-(exp(-xi(j)^2)+cos(2*eta(i)*xi(j)))/(1+exp(-xi(j)^2))*exp(-eta(i)^2));
    end
end
[X,Y]=meshgrid(xi,eta);
surfc(X,Y,P);hold on;xlabel('\xi');ylabel('\eta');