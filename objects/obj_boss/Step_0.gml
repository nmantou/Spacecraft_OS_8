/// @description Insert description here
// You can write your code in this editor	
if distance_to_object(target) > attack_range {
	direction = point_direction(x, y, target.x, target.y);
	speed = lerp(speed, max_speed, 0.1);
} 

else if (distance_to_object(target) <= attack_range) && (alarm[1] < 0) {
	direction = point_direction(x, y, target.x, target.y);
	var attack_mode = random_range(0, 5);
	if attack_mode <= 2 {
		for(var i = 0; i < random_range(1, 3);i ++){
			var enemy = instance_create_layer(x+random_range(-30, 30), y+random_range(-30, 30), "Instances", obj_enemy_to_space_station);
			enemy.target = obj_vessel;
		}
		alarm[1] = shoot_cool_down;	
		speed = lerp(speed, 0, 0.1);
	}
	
	else {
		for(var i = 0; i < 30;i ++){
			var bullet = instance_create_layer(x, y, "Instances", obj_enemy_bullet);
			bullet.damage = 1;
			bullet.speed = 12;
			bullet.direction = 12 * i;
		}
		alarm[1] = shoot_cool_down;	
		
	}
}
if (distance_to_object(target) <= attack_range)
	speed = lerp(speed, 0, 0.1);
if HP < 0 {
	instance_destroy();
}