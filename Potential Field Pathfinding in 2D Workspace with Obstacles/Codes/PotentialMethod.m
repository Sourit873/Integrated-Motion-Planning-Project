function path = PotentialMethod(start,goal,potential,max_it)
[force_x, force_y] = gradient(-potential);
path = [start];
for i=1:max_it
    %start from last updated point
    current = path(end,:);
    if (abs(norm(current - goal)) < 5.0)
        disp('Robot in close proximity of goal');
        break;
    end
    ix = round(current(2)); 
    iy = round(current(1));
    delx = force_x(ix,iy);
    dely = force_y(ix,iy);
    delt = 1/ norm([delx,dely]);
    next_point = current + delt*[delx,dely];
    path = vertcat(path,next_point);
    %add new point to path
end
end


