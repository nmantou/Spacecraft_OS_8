/// @description Insert description here
// You can write your code in this editor
alarm[1] = create_enemy_time;
if enemy_count < max_enemy_count {
	if distance_to_object(obj_vessel) > 500 {
		var enemy = instance_create_layer(x+random_range(-200, 200), y+random_range(-200, 200), "Instances", obj_enemy);
		enemy_count ++;
		enemy.energy_stone = self;
	}
}