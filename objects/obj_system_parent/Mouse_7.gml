/// @description Insert description here
// You can write your code in this editor
if !obj_vessel.reseting{
	self_state = !self_state;
	if self_state {
		image_index = 3;
		obj_vessel.space += running_space;
	}

	else {
		image_index = 1;
		obj_vessel.space -= running_space;
	}
	audio_play_sound(au_press, 5, false);
	set_space_bar(obj_game.space_bar);
}
