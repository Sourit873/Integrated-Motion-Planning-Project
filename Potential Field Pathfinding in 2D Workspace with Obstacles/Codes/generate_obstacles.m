function obstacle_space = generate_obstacles(sizex,sizey)
%function to define obstacles in the C-space. obstacle_space(x,y) = true,
%if an obstacle is present at that (x,y)
[x,y] = meshgrid(1:sizex,1:sizey);
obstacle_space = zeros(sizex,sizey);

'''p1 & c1''';
obstacle_space(150:350,50:100)= 1;
obstacle_space(75:150,100:200)= 1;
obstacle_space(275:350,300:310)= 1;

t = ((x - 250).^2 + (y - 200).^2) < 50^2;
obstacle_space(t) = 1;

'''p2''';
%obstacle_space(250:300,275:325)= 1;
%obstacle_space(20:100,75:175)= 1;

%t = ((x - 300).^2 + (y - 100).^2) < 50^2;
%obstacle_space(t) = 1;

%t = ((x - 100).^2 + (y - 300).^2) < 50^2;
%obstacle_space(t) = 1;

'''p3''';
%obstacle_space(300:350,25:75)= 1;
%obstacle_space(20:100,75:175)= 1;

%t = ((x - 250).^2 + (y - 300).^2) < 50^2;
%obstacle_space(t) = 1;

%t = ((x - 300).^2 + (y - 100).^2) < 50^2;
%obstacle_space(t) = 1;

'''c2''';
%obstacle_space(300:350,250:300)= 1;
%obstacle_space(20:100,75:175)= 1;

%t = ((x - 300).^2 + (y - 220).^2) < 50^2;
%obstacle_space(t) = 1;

%t = ((x - 100).^2 + (y - 300).^2) < 50^2;
%obstacle_space(t) = 1;

end
