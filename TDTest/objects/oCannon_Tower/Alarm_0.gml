/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objectToShoot)){
	var bullets;
	
	var i = 0;
	repeat(bullet_amount){
		bullets[i] = instance_create_depth(x,y,-9,oBullet);
		i++;
	}
	i = 0;
	
	repeat(array_length_1d(bullets)) {
		bullets[i].speed = 5;
		
		switch(level) {
	case 1:
	bullets[i].sprite_index = sBomb;
	break;
	case 2:
	bullets[i].sprite_index = sBomb;
	break;
	case 3:
	bullets[i].sprite_index = sBomb;
	break;
}
		
			var bullet_direction = point_direction(x,y,objectToShoot.x,objectToShoot.y);
		bullets[i].destination_x = objectToShoot.x;
		bullets[i].destination_y = objectToShoot.y;
		bullets[i].damage = 500;
		bullets[i].stops_at_destination = true;
		bullets[i].area_of_effect = 75;
		bullets[i].direction = bullet_direction;
		i++;
}
	
	
	alarm[0] = fire_rate;
}else{
	shooting= false;	
}