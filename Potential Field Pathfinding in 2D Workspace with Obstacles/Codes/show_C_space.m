function show_C_space(obstacle_space,start,goal,sizex,sizey)
contourf(obstacle_space);
hold on;
plot(start(1),start(2),'g.', 'MarkerSize', 25);
plot(goal(1),goal(2),'r.', 'MarkerSize', 25);
hold off;
axis([0 sizex 0 sizey]);
axis xy;
axis on;
title('C-space');
xlabel('X');
ylabel('Y');
legend('C-Space','Start','Goal');
end
