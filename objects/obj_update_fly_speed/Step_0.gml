/// @description Insert description here
// You can write your code in this editor
event_inherited();
x = camera_get_view_x(view_camera[0]) + x_offset;
y = camera_get_view_y(view_camera[0]) + y_offset;
image_xscale = lerp(image_xscale, 1.5, 0.5);
image_yscale = lerp(image_yscale, 1.5, 0.5);
if obj_update_background.fly_speed_level == 3
	image_index = 6;