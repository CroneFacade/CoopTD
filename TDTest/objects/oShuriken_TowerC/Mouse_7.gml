if(global.coins >= tower_cost && !global.holding_tower)
{
	var drag_tower = instance_create_depth(mouse_x,mouse_y,-9,oTowerD);
	drag_tower.cost = cost;
	global.coins -= cost;
}