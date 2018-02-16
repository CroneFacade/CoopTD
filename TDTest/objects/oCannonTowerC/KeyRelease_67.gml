/// @description Insert description here
// You can write your code in this editor
if(global.coins >= cost && !global.holding_tower)
{
	var drag_tower = instance_create_depth(mouse_x,mouse_y,-9,oCannonTowerD);
	drag_tower.cost = cost;
	global.coins -= cost;
}