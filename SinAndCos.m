%% SinAndCos.m

%models a triangle going around the unit circle

clear;
clf;
clc
%% parameters

N = 20;
theta = 0;
stepSize = 0.05;
dt = 0.02;

c = [0:0.1:20];

xc = cos(c);
yc = sin(c);


%% displays

for i = 0:stepSize:N
    x = cos(theta + i);
    y = sin(theta + i);
    
    
    plot([0,x], [0,y], 'k');
    hold on
    plot([0,x], [0,0], 'k');
    plot([x,x], [0,y], 'k');
    axis equal
    axis([-1, 1, -1, 1]);
    
    hold off
    drawnow
    pause(dt);
end