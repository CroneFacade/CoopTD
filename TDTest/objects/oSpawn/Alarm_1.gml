/// @description Insert description here
// You can write your code in this editor
if(instance_number(oEnemy) <= 0 && !restart){
	spawn_count = 0;
	spawn_amount =  round(spawn_amount * 1.1);
	spawn_rate = round(spawn_rate * 0.9);
	
	global.level++;
	global.hp = round(global.hp * 1.1);
	global.spd = global.spd * 1.1;
	
	alarm[0] = spawn_rate;
}

if(!restart)
alarm[1] = room_speed * 5;