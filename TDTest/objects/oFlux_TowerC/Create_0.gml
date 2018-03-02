//Tower properties
tower_tool_tip = @"Flux Tower - 150 coins
Damage: 5, Speed: 20, Range: 75, Multi-target
Upgrades: increases damage";
tower_sprites = [sFlux_Tower_Stage1, sFlux_Tower_Stage2, sFlux_Tower_Stage3_Animations_Strip];
tower_max_level = 3;
tower_cost = 150;
tower_upgrade_cost = 100;
tower_aim_is_single_target = false;

//Attack range
base_attack_range = 75;
attack_range_increased_by = 0;

//Attack speed
base_attack_speed = room_speed / 20;
attack_speed_increased_by = 0;

//Bullet properties
bullet_sprites = [sFlux_Tower_Projectile, sFlux_Tower_Projectile, sFlux_Tower_Projectile];
bullet_is_piercing = false;
bullet_has_infinite_range = false;
bullet_has_collision = true;

//Damage
base_bullet_damage = 5;
bullet_damage_increased_by = 5;

//Speed
base_bullet_speed = 10;
bullet_speed_increased_by = 0;

//Amount
base_bullet_amount = 1;
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



