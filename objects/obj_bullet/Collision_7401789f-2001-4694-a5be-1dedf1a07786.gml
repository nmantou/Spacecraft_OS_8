/// @description Insert description here
// You can write your code in this editor
other.direction = point_direction(other.x, other.y, x, y);
audio_play_sound(random_play_sound(au_vessel_hit1, au_vessel_hit2, au_vessel_hit3), 5, false);
other.HP -= obj_vessel.damage;
instance_destroy();