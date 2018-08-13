/// @description Insert description here
// You can write your code in this editor
draw_self();
var is_ON = obj_vessel.nav_system;
if is_ON && image_yscale == 1 {
	for(var i = 0;;i++){
		if instance_exists(instance_find(obj_vessel, i)){
			var vessel = instance_find(obj_vessel, i);
			var draw_x = (display_get_gui_width()-341)+(341*(vessel.x/room_width));
			var draw_y = (192*(vessel.y/room_height));
			draw_sprite_ext(spr_map_point, 0, draw_x, draw_y, 1, 1, 0, image_blend, 0.7);
		}
		else break;
	}
	
	for(var i = 0;;i++){
		if instance_exists(instance_find(obj_energy_stone, i)){
			var energy_stone = instance_find(obj_energy_stone, i);
			var draw_x = (display_get_gui_width()-341)+(341*(energy_stone.x/room_width));
			var draw_y = (192*(energy_stone.y/room_height));
			draw_sprite_ext(spr_map_point, 1, draw_x, draw_y, 1, 1, 0, image_blend, 0.7);
		}
		else break;
	}
	
	for(var i = 0;;i++){
		if instance_exists(instance_find(obj_space_station, i)){
			var space_station = instance_find(obj_space_station, i);
			var draw_x = (display_get_gui_width()-341)+(341*(space_station.x/room_width));
			var draw_y = (192*(space_station.y/room_height));
			draw_sprite_ext(spr_map_point, space_station_index, draw_x, draw_y, 1, 1, 0, image_blend, 0.7);
		}
		else break;
	}

}