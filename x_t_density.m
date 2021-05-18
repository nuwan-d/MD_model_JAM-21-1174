%% Nuwan Dewapriya
%% 2021/05/18
%% This code extracts data from the LAMMPS output file density.out and plot the position-time plot of density.

close all;
clear all;
clc;

%% Read density.out file

[fid] = fopen('density.out');
 
line_1 = fgetl(fid);
line_2 = fgetl(fid);
line_3 = fgetl(fid);

density(1,1:4) = 0;

for i=1:2500
    
    [ts,count] = fscanf(fid, '%d %d',[1,3]);

    [data,count] = fscanf(fid, '%d %f %f %f ',[4,247]);
     data = data';
         
    density = cat(1, density,data);
          
    Density(:,i) = data(:,4);
     
end

fclose(fid);

Density = Density';


%% Spatiotemporal resolution

X(size(Density,1),size(Density,2)) = 0;
T(size(Density,1),size(Density,2)) = 0;


for i=1:size(X,1)
    X(i, :) = [1:size(X,2)].*1;
end


for i=1:size(T,2)
    T(:, i) = [1:size(T,1)].*0.02';
end


%% X-T plot of Density

figure
pcolor(X, T, Density)
shading interp
colormap(jet)
hd = colorbar;

axis square
set(gca,'LineWidth',1,'Fontsize',9)
set(gca,'FontName','Arial')

xlabel('Position (nm)','FontName','Arial','fontsize',10)%,'fontweight','b'   
ylabel('Time (ps)','FontName','Arial','fontsize',10)
