//Upgrade tower if player can afford it
if(tower_level < tower_max_level && global.coins >= tower_upgrade_cost) {
		global.coins -= tower_upgrade_cost;
		tower_level += 1;
}