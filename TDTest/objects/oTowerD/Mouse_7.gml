if(color == c_white){
instance_destroy();
var tower = instance_create_depth(mouse_x,mouse_y,-1,oTower);

//Tower properties
tower.tower_sprites = tower_sprites;
tower.tower_max_level = tower_max_level;
tower.base_attack_range = base_attack_range;
tower.base_attack_speed = base_attack_speed;
tower.tower_cost = tower_cost;
tower.tower_upgrade_cost = tower_upgrade_cost;
tower.tower_aim_is_single_target = tower_aim_is_single_target;

//Bullet properties
tower.bullet_sprites = bullet_sprites;
tower.bullet_is_piercing = bullet_is_piercing;
tower.bullet_has_infinite_range = bullet_has_infinite_range;
tower.bullet_has_collision = bullet_has_collision;

//Damage
tower.base_bullet_damage = base_bullet_damage;
tower.bullet_damage_increased_by = bullet_damage_increased_by;

//Speed
tower.base_bullet_speed = base_bullet_speed;
tower.bullet_speed_increased_by = bullet_speed_increased_by;

//Amount
tower.base_bullet_amount = base_bullet_amount;
tower.bullet_amount_increase = bullet_amount_increase;

//AOE
tower.bullet_has_aoe = bullet_has_aoe;
tower.base_bullet_aoe_range = base_bullet_aoe_range;
tower.bullet_aoe_increased_by = bullet_aoe_increased_by;

global.holding_tower = false;
}