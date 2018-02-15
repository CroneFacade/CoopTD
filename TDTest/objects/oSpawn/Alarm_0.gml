/// @description Insert description here
// You can write your code in this editor
if(spawn_count < spawn_amount * enemy_base_spawn_amount[enemy_index] && !restart) {
	var enemy = instance_create_depth(x,y,-1,oEnemy);
	enemy.sprite_index = enemy_sprites[enemy_index];
	enemy.hp = global.hp * enemy_base_healths[enemy_index];
	enemy.maxHp = global.hp * enemy_base_healths[enemy_index];
	enemy.spd = global.spd * enemy_base_speeds[enemy_index];
	enemy.coins = enemy_base_coins[enemy_index];
	spawn_count++;
	alarm[0] = spawn_rate * enemy_base_spawn_rate[enemy_index];
}