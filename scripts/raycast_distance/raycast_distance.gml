/// @description raycast_distance(x,y,obj,direction,max_dist)
/// @param x
/// @param y
/// @param obj
/// @param direction
/// @param max_dist
var distance = 0;
var min_distance = 0;
var max_distance = argument4;

if (collision_line(argument0, argument1, argument0 + lengthdir_x(max_distance, argument3), argument1 + lengthdir_y(max_distance, argument3), argument2, false, true) = noone)
 return max_distance;

while (max_distance - min_distance >= 1) {
 distance = (min_distance + max_distance) * 0.5;

 if (collision_line(argument0, argument1, argument0 + lengthdir_x(distance, argument3), argument1 + lengthdir_y(distance, argument3), argument2, false, true) != noone)
  max_distance = distance;
 else
  min_distance = distance;
}

return distance;
