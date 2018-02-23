draw_self();

	sprite_index = tower_sprites[(tower_level - 1)];
	
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
			if (allEnemies[i] && point_distance(allEnemies[i].x, allEnemies[i].y, x, y) <= base_attack_range+16) {
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

if(en != noone){
	
	if (tower_aim_is_single_target)
	objectsToShoot[0] = en;
	else objectsToShoot = enemiesToTarget
	
	if(!shooting){
		alarm[0] = 1;
		shooting = true;
		image_speed = (room_speed / 360);
	}
	
	
	if(mouseOver(x,y,sprite_width,sprite_height)) {
	
		for(var i = 0; i < array_length_1d(objectsToShoot); i++) {
			draw_line(x,y,objectsToShoot[i].x,objectsToShoot[i].y);
		}
	}
}else{
	objectsToShoot = [];
	en = noone;
	if(image_index < 1) {
		image_speed = 0;
		image_index = 0;
	}
	
	
}
