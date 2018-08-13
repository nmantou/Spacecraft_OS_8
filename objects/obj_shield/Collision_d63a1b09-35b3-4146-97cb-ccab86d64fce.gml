/// @description Insert description here
// You can write your code in this editor
if obj_vessel.shield_HP > 0{
	obj_vessel.shield_HP --;
	instance_destroy(other);
	alarm[0] = room_speed * 5;
	audio_play_sound(au_shield_hurt, 5, false);
}