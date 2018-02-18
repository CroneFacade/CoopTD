/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
draw_self();

switch(level) {
	case 1:
	sprite_index = sFlux_Tower;
	break;
	case 2:
	sprite_index = sPlasma_Flux_Tower;
	break;
	case 3:
	sprite_index = sSpark_Flux_Tower;
	break;
}


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
			if (allEnemies[i] && point_distance(allEnemies[i].x, allEnemies[i].y, x, y) <= range+16) {
				enemiesToTarget[count] = allEnemies[i];
				count++;
			}
		}
		
	objectToShoot = enemiesToTarget;
	
	
	if(!shooting){
		alarm[0] = 1;
		shooting = true;
		image_speed = room_speed / 32;
	}
	
	if(mouseOver(x,y,sprite_width,sprite_height)){
		for(var i = 0; i < array_length_1d(enemiesToTarget); i++) {
			draw_line(x,y,enemiesToTarget[i].x,enemiesToTarget[i].y);	
		}
	}
	
}else{
	objectToShoot = [];
	if(image_index == 0) image_speed = 0;
}