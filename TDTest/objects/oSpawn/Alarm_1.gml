/// @description Insert description here
// You can write your code in this editor
if(instance_number(oEnemy) <= 0 && !restart){
	
	enemy_index = random(4);
	
	spawn_count = 0;
	spawn_amount =  round(spawn_amount * 1.1);
	spawn_rate = round(spawn_rate * 0.9);
	
	global.level++;
	global.hp = global.hp * 1.05;
	global.spd = global.spd * 1.01;
	
	alarm[0] = enemy_base_spawn_rate[enemy_index] * spawn_rate;
}

if(!restart)
alarm[1] = room_speed * 5;