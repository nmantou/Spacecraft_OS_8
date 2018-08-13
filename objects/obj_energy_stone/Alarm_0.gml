/// @description Insert description here
// You can write your code in this editor
alarm[0] = create_energy_point_time;
	if (energy_point_count < max_energy_point) && (distance_to_object(obj_vessel) > 1366) {
	var energy_point = instance_create_layer(x, y, "Instances", obj_energy_point);
	energy_point.energy_stone = self;
	energy_point.target_x = x + random_range(-100, 100);
	energy_point.target_y = y + random_range(-100, 100);
	energy_point_count ++;
}