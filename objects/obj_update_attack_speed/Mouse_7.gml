/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (obj_update_background.attack_speed_level < 3) && (obj_space_station.energy > cost_energy) {
	obj_update_background.attack_speed_level ++;
	obj_vessel.shoot_cool_down -= 7;
	image_index = obj_update_background.attack_speed_level * 2 + 1;
	obj_space_station.energy -= cost_energy;
	cost_energy += 100;
	audio_play_sound(au_press, 5, false);
}

