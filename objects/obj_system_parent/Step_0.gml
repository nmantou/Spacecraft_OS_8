/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord(keyboard)) && !obj_vessel.reseting{
	self_state = !self_state;
	if self_state {
		image_index = 3;
		obj_vessel.space += running_space;
		image_index = 2;
	}

	else {
		image_index = 1;
		obj_vessel.space -= running_space;
		image_index = 0;
	}
	set_space_bar(obj_game.space_bar);
}