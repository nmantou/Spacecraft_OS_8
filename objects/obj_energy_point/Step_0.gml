/// @description Insert description here
// You can write your code in this editor
move_towards_point(target_x, target_y, self_speed);
if (abs(x - target_x) <= (self_speed)) && (abs(y - target_y) <= (self_speed))
	self_speed = 0;

if obj_vessel.collecting_system && (distance_to_object(obj_vessel) < obj_vessel.collect_range) && can_be_collected {
	target_x = obj_vessel.x;
	target_y = obj_vessel.y;
	self_speed = lerp(self_speed, 5, 0.1);
}