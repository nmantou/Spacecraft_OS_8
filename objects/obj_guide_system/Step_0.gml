/// @description Insert description here
// You can write your code in this editor
event_inherited();
x = camera_get_view_x(view_camera[0]) + x_offset;
y = camera_get_view_y(view_camera[0]) + y_offset;
if keyboard_check_pressed(ord(keyboard)) && !obj_vessel.reseting {
	obj_vessel.guide_system = !obj_vessel.guide_system;
	audio_play_sound(au_press, 5, false);
}