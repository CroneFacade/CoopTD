/// @description Insert description here
// You can write your code in this editor
//Tower properties
tower_sprites = [sShuriken_Tower, sGolden_Shuriken_Tower, sMagic_Shuriken_Tower];
tower_max_level = 3;
base_attack_range = 200;
base_attack_speed = room_speed / 2;
tower_cost = 50;
tower_upgrade_cost = 75;

//Bullet properties
bullet_sprites = [sShuriken, sGolden_Shuriken, sMagic_Shuriken];
bullet_is_piercing = false;
bullet_has_infinite_range = true;
bullet_has_collision = true;

//Damage
base_bullet_damage = 100;
bullet_damage_is_multiplied = false;
bullet_damage_increased_by = 0;

//Speed
base_bullet_speed = 10;
bullet_speed_is_multiplied = false;
bullet_speed_increased_by = 0;

//Amount
base_bullet_amount = 1;
bullet_amount_multiplied = true;
bullet_amount_increase = 2;

//AOE
bullet_has_aoe = false;
base_bullet_aoe_range = 0;
bullet_aoe_is_multiplied = false;
bullet_aoe_increased_by = 0;



