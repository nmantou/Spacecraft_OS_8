/// @description Insert description here
// You can write your code in this editor
var is_ON = obj_vessel.nav_system;
if is_ON {
	image_xscale = lerp(image_xscale, 1, 0.5);
	image_yscale = lerp(image_yscale, 1, 0.2);
}
else {
	image_xscale = lerp(image_xscale, 0, 0.2);
	image_yscale = lerp(image_yscale, 0, 0.5);
}