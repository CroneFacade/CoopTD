if(isDoubled) {
	room_speed = global.base_room_speed;
	sprite_index = sUI_Slider_1x;
}
else {
	room_speed = global.base_room_speed * 2;
	sprite_index = sUI_Slider_2x;
}
isDoubled = !isDoubled;