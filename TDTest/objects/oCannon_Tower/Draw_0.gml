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



//var en = instance_nearest(x,y,oEnemy);
var en = noone;
var enemiesAmount = instance_number(oEnemy);
if (enemiesAmount > 0) {
	var allEnemies = [];
	
	for (var i = 0; i < enemiesAmount; i++ )
				allEnemies[i] = instance_find(oEnemy, i);
				
				var enemiesToTarget = [];
		

		var count = 0;
		// Then, find all instances inside the given radius
		for (var i = 0; i < enemiesAmount; i++ )
		{
			if (allEnemies[i] && point_distance(allEnemies[i].x, allEnemies[i].y, x, y) <= range) {
				enemiesToTarget[count] = allEnemies[i];
				count++;
			}
		}
				
	for (var i = 0; i < array_length_1d(enemiesToTarget); i++) {
		var enemy = enemiesToTarget[i];
		if (en == noone || en.path_position < enemy.path_position)
		en = enemy;
	}
	
	
	
}

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
	objectToShoot = noone;
	if(image_index == 0) image_speed = 0;
}