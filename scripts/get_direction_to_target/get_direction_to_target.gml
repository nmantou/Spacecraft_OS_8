///@param target_x
///@param target_y
var target_x = argument0;
var target_y = argument1;
var dir = point_direction(x, y, target_x, target_y);
	if dir > direction {
		if dir - direction > 180 {
			direction -= rotation_speed; 
		}
		else {
			direction += rotation_speed;
		}
	}
	else if dir < direction {
		if dir - direction < -180 {
			direction += rotation_speed;
		}
		else {
			direction -= rotation_speed;
		}
	}
	
	if (direction - dir < rotation_speed) && (direction - dir > -rotation_speed) {
		direction = dir;
	}