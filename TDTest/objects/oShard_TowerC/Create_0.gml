//Tower properties
tower_tool_tip = @"Shard Tower - 200 coins
Damage: 200, Speed: 1, Range: 130, Slow
Upgrades increase the damage and slow";
tower_sprites = [sShard_Tower_Stage1, sShard_Tower_Stage2, sShard_Tower_64x64_Stage3_Animation];
tower_max_level = 3;
tower_cost = 200;
tower_upgrade_cost = 200;
tower_aim_is_single_target = true;

//Attack range
base_attack_range = 130;
attack_range_increased_by = 0;

//Attack speed
base_attack_speed = room_speed / 1;
attack_speed_increased_by = 0;

//Bullet properties
bullet_sprites = [sShard_Tower_Stage1_Projectile, sShard_Tower_Stage2_Projectile, sShard_Tower_Stage2_Projectile];
bullet_is_piercing = false;
bullet_has_infinite_range = false;
bullet_has_collision = true;

//Damage
base_bullet_damage = 200;
bullet_damage_increased_by = 300;

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
bullet_affliction = "slow";
//Affliction strength in %
bullet_affliction_strength = 0.1;
bullet_affliction_strength_increased_by = 0.3;
bullet_affliction_stacks = false;
//Affliction time in seconds
bullet_affliction_time = 3;
bullet_affliction_time_increased_by = 5;



