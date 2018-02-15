/// @description Insert description here
// You can write your code in this editor
if(global.coins >= cost && !global.holding_tower)
{
	instance_create_depth(mouse_x,mouse_y,-9,oCannonTowerD)	
	global.coins -= cost;
}