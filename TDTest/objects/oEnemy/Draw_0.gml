/// @description Insert description here
// You can write your code in this editor
draw_self();

if(overlay != c_white) {
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,overlay,1);
}

var hBarHeight = 1;
var hBarWidth = 10;
var elevation = 20;

draw_healthbar(x-hBarWidth, y-hBarHeight-elevation, x+hBarWidth, y+hBarHeight-elevation, (hp/maxHp)*100, c_black, c_red, c_green, 0, true, true);