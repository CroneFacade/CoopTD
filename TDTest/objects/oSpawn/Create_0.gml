/// @description Insert description here
// You can write your code in this editor
spawn_amount = 5;
spawn_count = 0;
spawn_rate = 0.2 * room_speed;
end_round_logic = false;
get = undefined;


global.game_debug_mode = false;
global.hp = 1;
global.spd = 1;
global.level = 1;
global.coins = 100;
global.playerHealth = 100;
global.holding_tower = false;
global.used_debug = false

//Upgrades
global.upgrades_shuriken_tower_level_max = 3;

restart = false;
running = false;


//Enemies (this is temporary (probably))
enemy_index = 0;

//Slime
enemy_sprites[0] = sEnemy;
enemy_base_healths[0] = 500;
enemy_base_speeds[0] = 0.6;
enemy_base_spawn_rate[0] = 12;
enemy_base_spawn_amount[0] = 0.5;
enemy_base_coins[0] = 15;
//Haunted Scroll
enemy_sprites[1] = sHaunted_Scroll;
enemy_base_healths[1] = 60;
enemy_base_speeds[1] = 1.5;
enemy_base_spawn_rate[1] = 1.5;
enemy_base_spawn_amount[1] = 3;
enemy_base_coins[1] = 2;
//Beholder
enemy_sprites[2] = sBeholder;
enemy_base_healths[2] = 700;
enemy_base_speeds[2] = 0.8;
enemy_base_spawn_rate[2] = 5;
enemy_base_spawn_amount[2] = 0.5;
enemy_base_coins[2] = 15;
//Chest Stalker
enemy_sprites[3] = sChest_Stalker;
enemy_base_healths[3] = 3800;
enemy_base_speeds[3] = 0.25;
enemy_base_spawn_rate[3] = 40;
enemy_base_spawn_amount[3] = 0.1;
enemy_base_coins[3] = 200;
//Plant man
enemy_sprites[4] = sPlant_Man;
enemy_base_healths[4] = 100;
enemy_base_speeds[4] = 1;
enemy_base_spawn_rate[4] = 4;
enemy_base_spawn_amount[4] = 1;
enemy_base_coins[4] = 5;
//Haunted Knight
enemy_sprites[5] = sHauntedKnight;
enemy_base_healths[5] = 700;
enemy_base_speeds[5] = 0.5;
enemy_base_spawn_rate[5] = 2.2;
enemy_base_spawn_amount[5] = 1.5;
enemy_base_coins[5] = 20;
//Giant Housefly
enemy_sprites[6] = sGiant_Housefly;
enemy_base_healths[6] = 20;
enemy_base_speeds[6] = 3;
enemy_base_spawn_rate[6] = 1.2;
enemy_base_spawn_amount[6] = 5;
enemy_base_coins[6] = 2;
//GI Jane
enemy_sprites[7] = sGI_Jane;
enemy_base_healths[7] = 1200;
enemy_base_speeds[7] = 0.5;
enemy_base_spawn_rate[7] = 20;
enemy_base_spawn_amount[7] = 0.5;
enemy_base_coins[7] = 50;
//Wraith
enemy_sprites[8] = sWraith;
enemy_base_healths[8] = 800;
enemy_base_speeds[8] = 0.5;
enemy_base_spawn_rate[8] = 2.0;
enemy_base_spawn_amount[8] = 1.5;
enemy_base_coins[8] = 24;
//Axe Skeleton
enemy_sprites[9] = sAxe_Skeleton;
enemy_base_healths[9] = 1000;
enemy_base_speeds[9] = 0.5;
enemy_base_spawn_rate[9] = 2.0;
enemy_base_spawn_amount[9] = 0.8;
enemy_base_coins[9] = 35;
//Golden Knight
enemy_sprites[10] = sGolden_Knight;
enemy_base_healths[10] = 2200;
enemy_base_speeds[10] = 0.35;
enemy_base_spawn_rate[10] = 30;
enemy_base_spawn_amount[10] = 0.2;
enemy_base_coins[10] = 100;
//Shadow_Ninja
enemy_sprites[11] = sShadow_Ninja;
enemy_base_healths[11] = 800;
enemy_base_speeds[11] = 0.7;
enemy_base_spawn_rate[11] = 5;
enemy_base_spawn_amount[11] = 0.5;
enemy_base_coins[11] = 25;