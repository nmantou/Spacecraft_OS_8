/// @description Insert description here
// You can write your code in this editor
if energy_stone != noone {
	energy_stone.enemy_count --;
}
for(var i = 0; i < 3; i++){
	var energy_point = instance_create_layer(x, y, "Instances", obj_energy_point);
	energy_point.energy_stone = noone;
	energy_point.target_x = x+random_range(-20, 20);
	energy_point.target_y = y+random_range(-20, 20);
	energy_point.self_speed = 1;
}