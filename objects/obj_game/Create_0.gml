/// @description Insert description here
// You can write your code in this editor
var gui_width = camera_get_view_width(view_camera[0]);
var gui_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(gui_width, gui_height);
for(var i = 0; i < 10; i ++){
	space_bar[i] = instance_find(obj_space_bar, i);
}

set_space_bar(space_bar);

/*var energy_stone_max_count = 20;
for(var i = 0; i < energy_stone_max_count;i = i+0;){
	var x_pos = random_range(200, room_width - 200);
	var y_pos = random_range(200, room_height - 200);
	var nearest_energy_stone = instance_nearest(x_pos, y_pos, obj_energy_stone);
	if instance_exists(nearest_energy_stone){
		if (distance_to_point(x_pos-nearest_energy_stone.x, y_pos-nearest_energy_stone.y) > 400) && 
		   (distance_to_point(obj_space_station.x-nearest_energy_stone.x, obj_space_station.y-nearest_energy_stone.y) > 800){
			instance_create_layer(x_pos, y_pos, "Instances", obj_energy_stone);
			i ++;
		}
	}
	else {
		instance_create_layer(x_pos, y_pos, "Instances", obj_energy_stone);
		i ++;
	}
}*/

wave = 1;
alarm[0] = room_speed *50;
once = true;