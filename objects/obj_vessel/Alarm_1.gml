/// @description Insert description here
// You can write your code in this editor
	alarm[0] = room_speed * 3;
	reseting = true;
	engine_system = false;
	obj_engine_system.image_index = 0;
	obj_engine_system.self_state = false;
	shooting_system = false;
	obj_shooting_system.image_index = 0;
	obj_shooting_system.self_state = false;
	rotating_system = false;
	obj_rotating_system.image_index = 0;
	obj_rotating_system.self_state = false;
	nav_system = false;
	obj_nav_system.image_index = 0;
	obj_nav_system.self_state = false;
	if instance_exists(obj_nav) {
		obj_nav.image_xscale = 0;
		obj_nav.image_yscale = 0;
	}
	collecting_system = false;
	obj_collecting_system.image_index = 0;
	obj_collecting_system.self_state = false;
	info_system = false;
	obj_info_system.image_index = 0;
	obj_info_system.self_state = false;
	defence_system = false;
	obj_defence_system.image_index = 0;
	obj_defence_system.self_state = false;
	guide_system = false;
	obj_guide_system.image_index = 0;
	obj_guide_system.self_state = false;
	if instance_exists(obj_guide) {
		obj_guide.image_xscale = 0;
		obj_guide.image_yscale = 0;
	}
	update_system = false;
	obj_update_system.image_index = 0;
	obj_update_system.self_state = false;
	if instance_exists(obj_shield) {
		instance_destroy(obj_shield);
	}
	instance_deactivate_layer("Button");
	will_reset = false;
	can_move = false;
	is_moving = false;