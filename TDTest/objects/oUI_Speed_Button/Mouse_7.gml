if(isDoubled) {
	room_speed = global.base_room_speed;
	sprite_index = sSpeed_Button_2X;
}
else {
	room_speed = global.base_room_speed * 2;
	sprite_index = sSpeed_Button_1X;
}
isDoubled = !isDoubled;