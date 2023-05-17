%define domain
sizex = 400;
sizey = 400;

[x,y] = meshgrid(1:sizey,1:sizex);

obstacle_space = generate_obstacles(sizex,sizey);

%to define attractive force we need start point and goal point 

'''p1''';
%start = [100,50];
%goal = [380,200];

'''c1''';
start = [20,80];
goal = [380,200];

'''rest cases''';
%start = [50,150];
%goal = [380,350];

show_C_space(obstacle_space,start,goal,sizex,sizey);

%use function bwdist to get dist from current point to closest non zero
%point in domain 

euc_d = bwdist(obstacle_space);

d_new = (euc_d/100);
d_new = d_new+1;

%base distance till which repulsive force acts
d0 = 2;

%parameter to control motion
p1 = 500;

rep = p1*((1./d_new - 1/d0).^2);

rep (d_new > d0) = 0;

%parameter to control attractive force 

p2 = 1/400;

att = p2*((x-goal(1)).^2 + (y-goal(2)).^2);

%adding potentials

potential = att + rep;
path = PotentialMethod(start,goal,potential,1000);

[force_x, force_y] = gradient (-potential);

figure;

xidx = 1:5:sizey;
yidx = 1:5:sizex;

quiver(x(yidx,xidx), y(yidx,xidx), force_x(yidx,xidx), force_y(yidx,xidx),1,'k');

axis ([1 sizey 1 sizex]);

hold on;

plot(start(1), start(2), 'g.', 'MarkerSize', 25);
plot(goal(1), goal(2), 'r.', 'MarkerSize', 25);
plot (path(:,1), path(:,2), 'b', 'LineWidth', 1);
title('Path taken by robot');
xlabel('X')
ylabel('Y')
