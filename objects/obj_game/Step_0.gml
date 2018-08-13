/// @description Insert description here
// You can write your code in this editor
if obj_space_station.energy >= obj_space_station.total_energy && once {
	obj_vessel.reseting = true;
	obj_vessel.engine_system = false;
	obj_engine_system.image_index = 0;
	obj_engine_system.self_state = false;
	obj_vessel.shooting_system = false;
	obj_shooting_system.image_index = 0;
	obj_shooting_system.self_state = false;
	obj_vessel.rotating_system = false;
	obj_rotating_system.image_index = 0;
	obj_rotating_system.self_state = false;
	obj_vessel.nav_system = false;
	obj_nav_system.image_index = 0;
	obj_nav_system.self_state = false;
	if instance_exists(obj_nav) {
		obj_nav.image_xscale = 0;
		obj_nav.image_yscale = 0;
	}
	obj_vessel.collecting_system = false;
	obj_collecting_system.image_index = 0;
	obj_collecting_system.self_state = false;
	obj_vessel.info_system = false;
	obj_info_system.image_index = 0;
	obj_info_system.self_state = false;
	obj_vessel.defence_system = false;
	obj_defence_system.image_index = 0;
	obj_defence_system.self_state = false;
	obj_vessel.guide_system = false;
	obj_guide_system.image_index = 0;
	obj_guide_system.self_state = false;
	if instance_exists(obj_guide) {
		obj_guide.image_xscale = 0;
		obj_guide.image_yscale = 0;
	}
	obj_vessel.update_system = false;
	obj_update_system.image_index = 0;
	obj_update_system.self_state = false;
	if instance_exists(obj_shield) {
		instance_destroy(obj_shield);
	}
	instance_deactivate_layer("Button");
	obj_vessel.will_reset = false;
	obj_vessel.can_move = false;
	obj_vessel.is_moving = false;
	instance_create_layer(x, y, "Instances", obj_launch);
	obj_vessel.x = obj_space_station.x;
	obj_vessel.y = obj_space_station.y;
	obj_vessel.sprite_index = spr_empty;
	
	once = false;
}

if obj_space_station.y < 0 
	instance_create_layer(x, y, "Instances", obj_win);
if obj_vessel.max_space <= 0 || obj_space_station.energy < 0
	room_goto(r_lost);