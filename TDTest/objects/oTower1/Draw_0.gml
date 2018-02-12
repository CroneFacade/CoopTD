/// @description Insert description here
// You can write your code in this editor
draw_self();
if(mouseOver(x,y,sprite_width,sprite_height))
draw_circle(x,y,range,true);

var en = instance_nearest(x,y,oEnemy);
if(en != noone && point_distance(x,y,en.x,en.y) <= range+16){
	if(!shooting){
		alarm[0] = 1;
		shooting = true;
		image_speed = room_speed / 32;
	}
	
	objectToShoot = en;
	if(mouseOver(x,y,sprite_width,sprite_height))
	draw_line(x,y,en.x,en.y);
}else{
	shooting = false;
	objectToShoot = noone;
	if(image_index == 0) image_speed = 0;
}