theta1=dlmread('data\theta1.txt',' ');
theta2=dlmread('data\theta2.txt',' ');
Res=dlmread('data\hom2_for_theta0.txt',' ');
ksi=Res(1,1:end);
F0=Res(4,1:end);
f0=dlmread('data\f0.txt',' ');
m=length(f0);
n=length(ksi);
l=1;

[~,M]=min(F0);

% h=figure(1);
% text=annotation('textbox');
% set(text,'String','$\varphi_0$','FontSize',20,'HorizontalAlignment',...
% 'center','VerticalAlignment','middle','Position',[0.23 0.53 0.53 0.33],'LineStyle','none','Interpreter','latex');
% pause;
% for j=[1 2 3 4 5]
%     plot(ksi(l:end-l+1),theta1(j,l:end-l+1),'LineWidth',2);hold on;grid on;
%     plot(ksi(l:end-l+1),theta2(j,l:end-l+1),'LineWidth',2);
% %     set(text,'String',num2str(f0(j)));
% %     pause;
% end
% % plot(ksi(M)*[1 1],[0 max(max(theta1))],'k--');
% % plot(ksi(end-M+1)*[1 1],[0 max(max(theta1))],'k--');
% plot(ksi(M)*[1 1],[0 0.6],'k--');
% plot(ksi(end-M+1)*[1 1],[0 0.6],'k--');
% hom2_temp2d(h,'$\xi$','$\theta_1$');
% set(text,'String',['$\varphi_0=$ ' num2str(f0(1)) ';' num2str(f0(2)) ';' num2str(f0(3)) ';' num2str(f0(4)) ';' num2str(f0(5))]);

h=figure(2);
text=annotation('textbox');
set(text,'String','$\xi$','FontSize',20,'HorizontalAlignment',...
'center','VerticalAlignment','middle','Position',[0.13 0.63 0.43 0.43],'LineStyle','none','Interpreter','latex');
pause;
str='$\xi$ = ';
for i=10:20:n-10
    str=[str num2str(ksi(i)) ';'];
end
for i=10:20:n-10
    plot(f0,theta1(1:end,i),'LineWidth',2);hold on;grid on;
%     plot(f0,theta2(1:end,i),'LineWidth',2);
%     pause;
end
set(text,'String',str);
hom2_temp2d(h,'$\varphi_0$','$\theta_1$');

% h=figure(3);
% plot(ksi,F0,'LineWidth',5);hold on;grid on;
% plot(ksi(M)*[1 1],[min(F0) max(F0)],'k--');
% plot(ksi(end-M+1)*[1 1],[min(F0) max(F0)],'k--');
% hom2_temp2d(h,'$\xi$','$\varphi_0$');