/// @description Insert description here
// You can write your code in this editor
if can_get_damage {
	max_space -= other.damage;
	set_space_bar(obj_game.space_bar);
	can_get_damage = false;
	alarm[3] = 90;
	audio_play_sound(au_vessel_hurt, 5, false);
}
instance_destroy(other);