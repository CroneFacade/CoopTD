/// @description Insert description here
// You can write your code in this editor
if(instance_number(oEnemy) <= 0 && !restart){
	
	enemy_index = random(array_length_1d(enemy_sprites));
	
	spawn_count = 0;
	spawn_amount =  round(spawn_amount * 1.1);
	spawn_rate = round(spawn_rate * 0.99);
	
	global.level++;
	global.hp = global.hp * 1.2;
	global.spd = global.spd * 1.01;
	
	alarm[0] = 1;
}

if(!restart)
alarm[1] = room_speed * 10;