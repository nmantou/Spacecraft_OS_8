///@ param space_bar
var space_bar = argument0;
var max_space = obj_vessel.max_space;
var space = obj_vessel.space;

if space <= max_space {
	for(var i = 0; i < 10; i ++){
		if i < max_space {
			instance_activate_object(space_bar[i]);
			if i < space {
				space_bar[i].image_index = 1;
			}
		
			else {
				space_bar[i].image_index = 0;
			}
		}
	
		else {
			instance_deactivate_object(space_bar[i]);
		}
	}
}

else {
	for(var i = 0; i < 10; i ++){
		if i < space {
			instance_activate_object(space_bar[i]);
			space_bar[i].image_index = 2;
		}
	
		else {
			instance_deactivate_object(space_bar[i]);
		}
	}
}