/// @description Insert description here
// You can write your code in this editor
if engine_system && can_move {
	speed = lerp(speed, max_speed, 0.3);
	sprite_index = spr_vessel_move;
	is_moving = true;
}
