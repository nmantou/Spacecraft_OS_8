/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 10; i++){
	var energy_point = instance_create_layer(x, y, "Instances", obj_energy_point_boss);
	energy_point.energy_stone = noone;
	energy_point.target_x = x+random_range(-20, 20);
	energy_point.target_y = y+random_range(-20, 20);
	energy_point.self_speed = 2;
}