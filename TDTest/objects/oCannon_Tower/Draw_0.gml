/// @description Insert description here
// You can write your code in this editor
draw_self();

switch(level) {
	case 1:
	sprite_index = sCannon_Tower;
	break;
	case 2:
	sprite_index = sCannon_Tower;
	break;
	case 3:
	sprite_index = sCannon_Tower;
	break;
}

if(mouseOver(x,y,sprite_width,sprite_height)) {
draw_circle(x,y,range,true);
draw_set_color(c_black);
draw_text(x-15,y-35,string("Upgrade not available"));
draw_set_color(c_white);
}

var en = instance_nearest(x,y,oEnemy);
if(en != noone && point_distance(x,y,en.x,en.y) <= range+16){
	if(!shooting){
		alarm[0] = 1;
		shooting = true;
		image_speed = room_speed / 64;
	}
	
	objectToShoot = en;
	if(mouseOver(x,y,sprite_width,sprite_height))
	draw_line(x,y,en.x,en.y);
}else{
	shooting = false;
	objectToShoot = noone;
	if(image_index == 0) image_speed = 0;
}