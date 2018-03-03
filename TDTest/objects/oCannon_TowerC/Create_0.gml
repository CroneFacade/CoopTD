//Tower properties
tower_tool_tip = @"Cannon Tower - 100 coins
Damage: 600, Speed: 0.25, Range: 300, AOE
Upgrades: increase the speed and damage";
tower_sprites = [sCannon_Tower_Stage1, sCannon_Tower_Stage2, sCannon_Tower_Stage3];
tower_max_level = 3;
tower_cost = 100;
tower_upgrade_cost = 100;
tower_aim_is_single_target = true;

//Attack range
base_attack_range = 300;
attack_range_increased_by = 0;

//Attack speed
base_attack_speed = room_speed * 4;
attack_speed_increased_by = -(room_speed);

//Bullet properties
bullet_sprites = [sBomb, sBomb, sBomb];
bullet_is_piercing = false;
bullet_has_infinite_range = false;
bullet_has_collision = false;

//Damage
base_bullet_damage = 600;
bullet_damage_increased_by = 450;

//Speed
base_bullet_speed = 3;
bullet_speed_increased_by = 2;

//Amount
base_bullet_amount = 1;
bullet_amount_increase = 0;

//AOE
base_bullet_aoe_range = 75;
bullet_aoe_increased_by = 25;

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

