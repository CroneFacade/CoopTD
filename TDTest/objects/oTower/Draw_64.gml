if(mouseOver(x,y,sprite_width,sprite_height)) 
draw_circle(x,y,base_attack_range,true);


if(mouseOver(x,y,sprite_width,sprite_height) && tower_level < tower_max_level) {
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(x,y-35,string("Upgrade $"+string(tower_upgrade_cost)));
draw_set_color(c_white);
}