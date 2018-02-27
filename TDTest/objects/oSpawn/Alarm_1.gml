/// @description Insert description here
// You can write your code in this editor
if(instance_number(oEnemy) <= 0 && !restart){
	
	enemy_index = random(array_length_1d(enemy_sprites));
	
	spawn_count = 0;
	spawn_rate = round(spawn_rate * 0.9);
	
	global.level++;
	
	
	if(global.level < 20) {
		global.hp += 0.5;
		spawn_amount =  round(spawn_amount * 1.15);
	}
	else {
		spawn_amount = spawn_amount;
		global.hp = global.hp * 1.05;
	}
	
	global.spd = global.spd * 1.03;
	
	alarm[0] = 1;
}

if(!restart)
alarm[1] = room_speed * 10;