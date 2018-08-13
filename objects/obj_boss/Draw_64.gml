/// @description Insert description here
// You can write your code in this editor
if obj_vessel.info_system && instance_exists(obj_boss) {
	draw_HP = lerp(draw_HP, HP, 0.25);
	draw_set_color(c_red);
	draw_rectangle(display_get_gui_width()/2 - 200, 100, display_get_gui_width()/2+300*draw_HP / max_HP, 120, false);
	draw_set_color(c_white);
}