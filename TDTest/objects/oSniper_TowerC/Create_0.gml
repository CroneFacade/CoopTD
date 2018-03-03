//Tower properties
tower_tool_tip = @"Sniper Tower - 200 coins
Damage: 1200, Speed: 0.2, Range: 400, 
Upgrades: Increases damage by 1200 per level";
tower_sprites = [sSniper_Tower_Stage1, sSniper_Tower_Stage2, sSniper_Tower_Stage2];
tower_max_level = 3;
tower_cost = 200;
tower_upgrade_cost = 100;
tower_aim_is_single_target = true;

//Attack range
base_attack_range = 400;
attack_range_increased_by = 0;

//Attack speed
base_attack_speed = room_speed * 5;
attack_speed_increased_by = 0;

//Bullet properties
bullet_sprites = [sSniper_Tower_Projectile, sSniper_Tower_Projectile, sSniper_Tower_Projectile];
bullet_is_piercing = false;
bullet_has_infinite_range = true;
bullet_has_collision = true;

//Damage
base_bullet_damage = 1200;
bullet_damage_increased_by = 1200;

//Speed
base_bullet_speed = 25;
bullet_speed_increased_by = 0;

//Amount
base_bullet_amount = 0;
bullet_amount_increase = 0;

//AOE
base_bullet_aoe_range = 0;
bullet_aoe_increased_by = 0;

//Afflictions
// You can use "slow", more coming on demand
bullet_affliction = "";
//Affliction strength in %
bullet_affliction_strength = 0.1;
bullet_affliction_strength_increased_by = 0.3;
bullet_affliction_stacks = false;
//Affliction time in seconds
bullet_affliction_time = 3;
bullet_affliction_time_increased_by = 5;



