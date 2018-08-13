/// @description Insert description here
// You can write your code in this editor
image_index = 1;
alarm[1] = 5;
energy -= 1;
audio_play_sound(au_vessel_hurt, 5, false);
instance_destroy(other);
if alarm[2] < 0 {
	alarm[2] = room_speed * 2;
}
if instance_exists(obj_nav) {
	obj_nav.space_station_index = 3;
}