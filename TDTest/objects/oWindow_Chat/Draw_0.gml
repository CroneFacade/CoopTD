draw_set_font(fChat);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign (fa_middle);

if(blink)
draw_text(x - 10,y + 60,text+"|");
else
draw_text(x - 10,y + 60,text);

var chatList_x = x - 10;
var chatList_y = y;
var chat_line_height = 0;

for (var i = 1; i < 20; i++) {
	
	var index = ds_list_size(global.chat_list) - i
	if (index < 0)
	break;
	
	var chatLine = ds_list_find_value(global.chat_list, index);
	draw_text(chatList_x, chatList_y + chat_line_height, chatLine);
	chat_line_height -= 20;
}