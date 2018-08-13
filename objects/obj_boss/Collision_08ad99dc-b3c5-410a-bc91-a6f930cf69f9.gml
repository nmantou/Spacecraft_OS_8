/// @description Insert description here
// You can write your code in this editor
image_index = 1;
alarm[0] = 5;
HP --;
audio_play_sound(random_play_sound(au_vessel_hit1, au_vessel_hit2, au_vessel_hit3), 5, false);
instance_destroy(other);