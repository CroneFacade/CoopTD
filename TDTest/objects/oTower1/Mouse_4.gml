/// @description Insert description here
// You can write your code in this editor

//Upgrade tower if player can afford it
if(global.coins >= upgrade_cost) {
		global.coins -= upgrade_cost;
		bullet_amount += 2;
		level += 1;
}