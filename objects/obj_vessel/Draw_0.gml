/// @description Insert description here
// You can write your code in this editor
var damage_cool_down = 4;
if (alarm[3] % damage_cool_down) <= (damage_cool_down / 2) {
	draw_self();
}

if will_reset {
		draw_text(x - 100, y - 80, "Running out of space\n  Will Reset..." + string(ceil((alarm[1] + 1) / room_speed)));
}