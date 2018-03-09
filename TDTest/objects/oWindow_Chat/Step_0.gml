/// @description Handle Key inputs
if(keyboard_check(vk_anykey) && string_length(text) < 200){
	text = text+string(keyboard_string);
	keyboard_string = "";

}

var del_timer = 2;

if(keyboard_check_pressed(vk_backspace) && delete_timer == del_timer) {
	text = string_delete(text,string_length(text),1);
	keyboard_string = "";
	delete_timer = -(del_timer*3);
}

if(keyboard_check(vk_backspace) && delete_timer == del_timer) {
	text = string_delete(text,string_length(text),1);
	keyboard_string = "";
	delete_timer = 0;
}

if(keyboard_check_released(vk_enter)) {
	//send message
	if(text != "")
	ds_list_add(global.chat_list, global.player_name + ": " + text);
	text = "";
	keyboard_string = "";
}


// Handle Timer Update
if(delete_timer < del_timer) {
	delete_timer++;
}
