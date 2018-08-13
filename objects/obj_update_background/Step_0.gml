/// @description Insert description here
// You can write your code in this editor
var is_ON = obj_vessel.update_system;
if is_ON {
	image_xscale = lerp(image_xscale, 1.5, 0.5);
	image_yscale = lerp(image_yscale, 1.5, 0.2);
}
else {
	image_xscale = lerp(image_xscale, 0, 0.2);
	image_yscale = lerp(image_yscale, 0, 0.5);
	create_button = true;
	if instance_exists(obj_update_fly_speed) {
		instance_destroy(obj_update_fly_speed);
	}
	if instance_exists(obj_update_attack_speed) {
		instance_destroy(obj_update_attack_speed);
	}
	if instance_exists(obj_update_shield) {
		instance_destroy(obj_update_shield);
	}
	if instance_exists(obj_update_space) {
		instance_destroy(obj_update_space);
	}
}

if is_ON && create_button {
	instance_create_layer(x, y, "Button", obj_update_fly_speed);
	instance_create_layer(x, y, "Button", obj_update_attack_speed);
	instance_create_layer(x, y, "Button", obj_update_shield);
	instance_create_layer(x, y, "Button", obj_update_space);
	create_button = false;
}