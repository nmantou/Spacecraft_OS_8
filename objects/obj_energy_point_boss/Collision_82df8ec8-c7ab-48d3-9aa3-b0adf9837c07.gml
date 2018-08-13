/// @description Insert description here
// You can write your code in this editor
if can_be_collected {
	other.energy += energy;
	if energy_stone != noone
		energy_stone.energy_point_count --;
	audio_play_sound(random_play_sound(au_get_energy, au_get_energy2, au_get_energy3), 5, false);
	instance_destroy();
}