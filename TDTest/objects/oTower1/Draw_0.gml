/// @description Insert description here
// You can write your code in this editor
draw_self();

switch(level) {
	case 1:
	sprite_index = sShuriken_Tower;
	break;
	case 2:
	sprite_index = sGolden_Shuriken_Tower;
	break;
	case 3:
	sprite_index = sMagic_Shuriken_Tower;
	break;
}



//var en = instance_nearest(x,y,oEnemy);
var en = noone;
var enemiesAmount = instance_number(oEnemy);
if (enemiesAmount > 0) {
	var allEnemies;
	
	for (var i = 0; i < enemiesAmount; i++ )
				allEnemies[i] = instance_find(oEnemy, i);
				
	for (var i = 0; i < enemiesAmount; i++) {
		var enemy = allEnemies[i];
		if (en == noone || en.path_position < enemy.path_position)
		en = enemy;
	}
}

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
	objectToShoot = noone;
	if(image_index == 0) image_speed = 0;
}