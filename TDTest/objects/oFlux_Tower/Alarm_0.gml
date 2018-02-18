/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if (is_array(objectToShoot) && array_length_1d(objectToShoot) > 0){
	var bullets;
	var enemiesAmount = array_length_1d(objectToShoot)
	var i = 0;
	repeat(enemiesAmount){
		bullets[i] = instance_create_depth(x,y,-9,oBullet);
		i++;
	}
	i = 0;
	var dir = -1;
	var count = 1;
	repeat(enemiesAmount) {
		bullets[i].speed = 10;
		
		switch(level) {
			case 1:
			bullets[i].sprite_index = sFlux_Tower_Projectile;
			break;
			case 2:
			bullets[i].sprite_index = sPlasma_Flux_Tower_Projectile;
			break;
			case 3:
			bullets[i].sprite_index = sSpark_Flux_Tower_Projectile;
			break;
		}
		
		bullets[i].direction = point_direction(x,y, objectToShoot[i].x, objectToShoot[i].y);
		bullets[i].image_angle = point_direction(x,y, objectToShoot[i].x, objectToShoot[i].y);
		bullets[i].damage = 10 + ((level - 1) * 10)
		bullets[i].collides_with_enemies = true;
		bullets[i].stops_at_destination = true;
		i++;
}
	
	
	alarm[0] = fire_rate;
}else{
	shooting= false;	
}