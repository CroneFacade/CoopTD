if(global.coins >= tower_cost && !global.holding_tower)
{
	var drag_tower = instance_create_depth(mouse_x,mouse_y,-9,oTowerD);
	
	drag_tower.sprite_index = tower_sprites[0];
	
	//Tower properties
drag_tower.tower_sprites = tower_sprites;
drag_tower.tower_max_level = tower_max_level;
drag_tower.tower_cost = tower_cost;
drag_tower.tower_upgrade_cost = tower_upgrade_cost;
drag_tower.tower_aim_is_single_target = tower_aim_is_single_target;

//Attack range
drag_tower.base_attack_range = base_attack_range;
drag_tower.attack_range_increased_by = attack_range_increased_by;

//Attack speed
drag_tower.base_attack_speed = base_attack_speed;
drag_tower.attack_speed_increased_by = attack_speed_increased_by;

//Bullet properties
drag_tower.bullet_sprites = bullet_sprites;
drag_tower.bullet_is_piercing = bullet_is_piercing;
drag_tower.bullet_has_infinite_range = bullet_has_infinite_range;
drag_tower.bullet_has_collision = bullet_has_collision;

//Damage
drag_tower.base_bullet_damage = base_bullet_damage;
drag_tower.bullet_damage_increased_by = bullet_damage_increased_by;

//Speed
drag_tower.base_bullet_speed = base_bullet_speed;
drag_tower.bullet_speed_increased_by = bullet_speed_increased_by;

//Amount
drag_tower.base_bullet_amount = base_bullet_amount;
drag_tower.bullet_amount_increase = bullet_amount_increase;

//AOE
drag_tower.base_bullet_aoe_range = base_bullet_aoe_range;
drag_tower.bullet_aoe_increased_by = bullet_aoe_increased_by;

//Afflictions
drag_tower.bullet_affliction = bullet_affliction;
drag_tower.bullet_affliction_strength = bullet_affliction_strength;
drag_tower.bullet_affliction_strength_increased_by = bullet_affliction_strength_increased_by;
drag_tower.bullet_affliction_stacks = bullet_affliction_stacks;
drag_tower.bullet_affliction_time = bullet_affliction_time;
drag_tower.bullet_affliction_time_increased_by = bullet_affliction_time_increased_by;


	global.coins -= tower_cost;
}