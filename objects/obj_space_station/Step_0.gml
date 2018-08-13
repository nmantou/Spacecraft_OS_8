/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_vessel) < 100) && (alarm[0] < 0){
	if obj_vessel.energy > 0 {
		var energy_point = instance_create_layer(obj_vessel.x, obj_vessel.y, "Instances", obj_energy_point);
		energy_point.can_be_collected = false;
		energy_point.target_x = x;
		energy_point.target_y = y;
		energy_point.self_speed = 5;
		obj_vessel.energy -= 5;
		alarm[0] = 5;
	}
}

if fly {
	obj_vessel.speed = 0;
	obj_vessel.x = obj_space_station.x;
	obj_vessel.y = obj_space_station.y;
	direction = 90
	image_angle = lerp(image_angle, 0, 0.02);
	if image_angle < 2 {
	if once {
		audio_play_sound(au_fly, 5, false);
		once = false;
	}
	sprite_index = spr_space_statioon_fly;
	speed = lerp(speed, 20, 0.01);
	}
}