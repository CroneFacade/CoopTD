draw_set_font(fChat);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if(blink)
draw_text_ext(x - 10,y + 50,text+"|", 16,350);
else
draw_text_ext(x - 10,y + 50,text, 16,350);

var chatList_x = x - 10;
var chatList_y = y + 20;
var heightIncrement = 0;

for (var i = 1; i < 29; i++) {
	
	var index = ds_list_size(global.chat_list) - i;
	if (index < 0)
	break;
	
	var chatLine = ds_list_find_value(global.chat_list, index);
	heightIncrement += string_height_ext(chatLine, 16, 330);
	draw_text_ext(chatList_x, chatList_y - heightIncrement, chatLine, 16, 330);
	
}