/// @description Insert description here
// You can write your code in this editor
if(instance_number(oEnemy) <= 0 && !restart){
	spawn_count = 0;
	spawn_amount =  spawn_amount * 1.2;
	spawn_rate -= 2.5;
	
	global.level++;
	global.hp += 10;
	global.spd += 0.1;
	
	alarm[0] = spawn_rate;
}

if(!restart)
alarm[1] = room_speed * 5;