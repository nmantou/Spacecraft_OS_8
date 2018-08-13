///@param audio_1
///@param audio_2
///@param audio_3

var audio_1 = argument0;
var audio_2 = argument1;
var audio_3 = argument2;
var select = random_range(0, 9);
if select < 3 {
	return audio_1;
}
else if (select >= 3) && (select < 6) {
	return audio_2;
}
else
	return audio_3;
