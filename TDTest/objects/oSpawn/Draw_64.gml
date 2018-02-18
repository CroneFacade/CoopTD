/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMain);
draw_set_halign(fa_center);

draw_set_color(c_black);
draw_text(76,691,string(global.coins));
draw_text(76,722,string(global.level));
draw_text(76,663,string(global.playerHealth));

if (restart)
{
	draw_set_halign(fa_center);
	draw_set_color(c_red);
    draw_text(room_width/2, room_height-100, "You died. Press space to restart.");
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_highscore(245, 145, room_width - 175, room_height - 125)
}

if (!running)
{
	draw_set_halign(fa_center);
    draw_text(room_width/2-150, room_height/2, "Press space to start.");
}

draw_set_halign(fa_left);
draw_set_color(c_white);                                                                             