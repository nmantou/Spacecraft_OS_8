/// @description Insert description here
// You can write your code in this editor
if !check_space() && first_reset {
	alarm[1] = room_speed * 2;
	first_reset = false;
	will_reset = true;
}

else if check_space() first_reset = true;

if will_reset {
	if check_space() {
		will_reset = false;
		alarm[1] = -1;
	}
}

if !is_moving {
	sprite_index = spr_vessel_idle;
	speed = lerp(speed, 0, 0.3);
}

if rotating_system {
	get_direction_to_target(mouse_x, mouse_y);
	image_angle = direction;
}

if shooting_system && alarm[2] < 0 {
	var x_offset = lengthdir_x(20,direction);
	var y_offset = lengthdir_y(20,direction);
	var bullet = instance_create_layer(x+x_offset, y+y_offset, "Instances", obj_bullet);
	audio_play_sound(random_play_sound(au_vessel_shoot1, au_vessel_shoot2, au_vessel_shoot3), 5, false);
	bullet.direction = direction;
	bullet.image_angle = direction;
	alarm[2] = shoot_cool_down;
}