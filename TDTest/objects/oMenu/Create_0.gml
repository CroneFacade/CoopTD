/// @description Insert description here
// You can write your code in this editor
window_set_caption("Coop-TD by StabwoundStudios v0.3");
menu_x = x;
menu_y = y;
button_h = 48;

// buttons
button[0] = "Play";
button[1] = "Host co-op";
button[2] = "Join co-op";
button[3] = "Exit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

if (!file_exists("user.ini")) {
	var name = get_string("What's your name?","Anon");
	
	ini_open("user.ini")
	ini_write_string("UserInfo", "Name", name);
	ini_close();
	global.player_name = name;
}
else {
	ini_open("user.ini")
	global.player_name = ini_read_string("UserInfo", "Name", "Unknown");
	ini_close();
}