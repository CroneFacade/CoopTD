if(is_array(objectsToShoot) && array_length_1d(objectsToShoot) > 0){
	
	for(var t = 0; t < array_length_1d(objectsToShoot); t++) {
		var bullets;
	var bullet_amount = 1;
	var angle = 0;
	
	if(base_bullet_amount + ((tower_level - 1) * bullet_amount_increase) > 1) {
		bullet_amount = base_bullet_amount + ((tower_level - 1) * bullet_amount_increase);
		
		//Todo: add angle property
		angle = 45 / bullet_amount;
	
	}
	var count = 1;
	var dir = -1;
	for(var i = 0; i < bullet_amount; i++) {
		bullets[i] = instance_create_depth(x,y,-9,oBullet);
		bullets[i].speed = base_bullet_speed + ((tower_level - 1) * bullet_speed_increased_by);
		bullets[i].sprite_index = bullet_sprites[(tower_level - 1)];
		bullets[i].image_angle = point_direction(x,y, objectsToShoot[t].x, objectsToShoot[t].y);
		bullets[i].damage = base_bullet_damage + ((tower_level - 1) * bullet_damage_increased_by);
		bullets[i].collides_with_enemies = bullet_has_collision;
		bullets[i].destination_x = objectsToShoot[t].x;
		bullets[i].destination_y = objectsToShoot[t].y;
		bullets[i].stops_at_destination = !bullet_has_infinite_range;
		bullets[i].area_of_effect = base_bullet_aoe_range + ((tower_level - 1)* bullet_aoe_increased_by);
		
		
		
		var bullet_direction = point_direction(x,y,objectsToShoot[t].x,objectsToShoot[t].y);
		
			
		if (dir == -1 && i > 0) {
			bullet_direction = point_direction(x,y,objectsToShoot[t].x,objectsToShoot[t].y) - angle * count;
			dir = 1;
		} else if (i != 0) {
			bullet_direction = point_direction(x,y,objectsToShoot[t].x,objectsToShoot[t].y) + angle * count;
			dir = -1;
			count++;
		}
		
		bullets[i].direction = bullet_direction;
		
	}
	}
	
	alarm[0] = base_attack_speed;
}else{
	shooting= false;	
}