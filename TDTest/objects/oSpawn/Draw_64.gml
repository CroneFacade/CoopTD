/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMain);
draw_set_halign(fa_left);

draw_set_color(c_black);
draw_text(10,10,"Coins " + string(global.coins));
draw_text(10,30,"Level " + string(global.level));
draw_text(10,50,"Health " + string(global.playerHealth));

if (restart)
{
	draw_set_halign(fa_center);
	draw_set_color(c_red);
    draw_text(room_width/2-150, room_height/2, "You died. Press space to restart.");
}

if (!running)
{
	draw_set_halign(fa_center);
    draw_text(room_width/2-150, room_height/2, "Press space to start.");
}

draw_set_halign(fa_left);
draw_set_color(c_white);