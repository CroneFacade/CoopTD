/// @description Insert description here
// You can write your code in this editor
if(mouseOver(x,y,sprite_width,sprite_height) && level <= global.upgrades_shuriken_tower_level_max) {
draw_circle(x,y,range,true);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(x,y-35,string("Upgrade $"+string(upgrade_cost)));
draw_set_color(c_white);
}