/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (obj_vessel.max_space < 10) && (obj_space_station.energy > cost_energy) {
	obj_vessel.max_space ++;
	set_space_bar(obj_game.space_bar);
	obj_space_station.energy -= cost_energy;
	audio_play_sound(au_press, 5, false);
}

if obj_vessel.max_space < 10
	image_index = 0;
else
	image_index = 2;

