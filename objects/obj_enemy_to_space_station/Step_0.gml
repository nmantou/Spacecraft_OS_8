/// @description Insert description here
// You can write your code in this editor	
if distance_to_object(obj_vessel) < target_range 
	target = obj_vessel;
	
if distance_to_object(target) > attack_range {
	direction = point_direction(x, y, target.x, target.y);
	speed = lerp(speed, max_speed, 0.1);
} 

else if (distance_to_object(target) <= attack_range) && (alarm[1] < 0) {
	direction = point_direction(x, y, target.x, target.y);
	var x_offset = lengthdir_x(20,direction);
	var y_offset = lengthdir_y(20,direction);
	var bullet = instance_create_layer(x+x_offset, y+y_offset, "Instances", obj_enemy_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction;
	bullet.damage = damage;
	alarm[1] = shoot_cool_down;	
}

if (distance_to_object(target) <= attack_range)
	speed = lerp(speed, 0, 0.1);

if HP <= 0 {
	instance_destroy();
}