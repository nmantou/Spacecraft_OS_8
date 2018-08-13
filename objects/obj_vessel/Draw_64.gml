/// @description Insert description here
// You can write your code in this editor
if !check_space() && reseting {
	instance_deactivate_layer("Button");
	draw_text(display_get_gui_width()/2 - 50, display_get_gui_height() - 30, "Reset..." + string(ceil((alarm[0]) / room_speed)));
}

if info_system {
	draw_text(display_get_gui_width()/2-60, 20, 
			"Vessel Energy:"+string(energy)+"\nSpace Station Energy:"+string(obj_space_station.energy)
			+"/"+string(obj_space_station.total_energy));
}