/// @description Insert description here
// You can write your code in this editor

//Particle Emitter
particle_emitter = part_emitter_create(global.part_sys);


overlay = c_white;
base_spd = undefined;
debuff_time = 0;

spd = 1;
coins = 1;
path_start(path0, global.spd,0,true);
hp = global.hp;
maxHp = global.hp;

afflictions = [];
affliction_strengths = [];
affliction_stackss = [];
affliction_end_times = [];
affliction_base_time = [];
