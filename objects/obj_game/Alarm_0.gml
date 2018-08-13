/// @description Insert description here
// You can write your code in this editor
alarm[0] = room_speed *50;
if wave < 4 {
	for (var i = 0; i < wave; i++) {
		var enemy = instance_create_layer(x+random_range(-30, 30), y+random_range(-30, 30), "Instances", obj_enemy_to_space_station);
		enemy.target = obj_space_station;
	}
}
if wave == 4 {
	var boss = instance_create_layer(obj_vessel.x+900, obj_vessel.y, "Instances", obj_boss);
	boss.target = obj_vessel;
}
wave ++;