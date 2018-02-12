/// @description Insert description here
// You can write your code in this editor
if(spawn_count < spawn_amount && !restart) {
	instance_create_depth(x,y,-1,oEnemy);
	spawn_count++;
	alarm[0] = spawn_rate;
}