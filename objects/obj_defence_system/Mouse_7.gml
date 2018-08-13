/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !obj_vessel.reseting {
	obj_vessel.defence_system = !obj_vessel.defence_system;
	if obj_vessel.defence_system {
		instance_create_layer(obj_vessel.x, obj_vessel.y, "Instances", obj_shield);
	}

	else if instance_exists(obj_shield) {
		instance_destroy(obj_shield);
	}
}