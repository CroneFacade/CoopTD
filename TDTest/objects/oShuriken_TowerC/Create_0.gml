//Tower properties
tower_tool_tip = @"Shuriken Tower - 50 coins
Damage: 25, Speed: 2, Range: 200, Piercing
Upgrades increase the amount of shurikens shot";
tower_sprites = [sShuriken_Tower_Stage1, sShuriken_Tower_Stage2, sShuriken_Tower_Stage3];
tower_max_level = 3;
tower_cost = 50;
tower_upgrade_cost = 75;
tower_aim_is_single_target = true;

//Attack range
base_attack_range = 200;
attack_range_increased_by = 0;

//Attack speed
base_attack_speed = room_speed / 2;
attack_speed_increased_by = 0;

//Bullet properties
bullet_sprites = [sShuriken, sShuriken, sShuriken];
bullet_is_piercing = true;
bullet_has_infinite_range = true;
bullet_has_collision = true;

//Damage
base_bullet_damage = 25;
bullet_damage_increased_by = 0;

//Speed
base_bullet_speed = 10;
bullet_speed_increased_by = 0;

//Amount
base_bullet_amount = 1;
bullet_amount_increase = 2;

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



