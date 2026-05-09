clear all;
clc;
format long
set(0,'DefaultAxesFontSize',20);
set(findall(gcf, 'type', 'axes'), 'FontSize', 20); 
n1=200;n2=200;n3=20001;
dx=1;dy=1;dt=0.025;
a = readmatrix('Prey_pattern_data_theta_0.78_d2_0.2_t_10000.csv');
for i=1:1:n1+1
    x(i)=(i-1)*dx;
end
for j=1:1:n2+1
    y(j)=(j-1)*dy;
end
[X,Y]=meshgrid(x,y);
figure(1)
pcolor(X,Y,a(:,:));shading interp;colormap jet;colorbar;
xticks(0:50:200);  
yticks(0:50:200);     
h1=xlabel('$x \rightarrow$', 'Interpreter', 'latex', 'FontSize', 20);
h2=ylabel('$y \rightarrow$', 'Interpreter', 'latex', 'FontSize', 20);
set(h1, 'FontSize', 20);
set(h2, 'FontSize', 20);