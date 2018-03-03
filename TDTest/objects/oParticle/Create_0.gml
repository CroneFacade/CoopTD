//Particle system
global.part_sys = part_system_create();
part_system_depth(global.part_sys, -1300);

//Snow
global.part_snow = part_type_create();
part_type_sprite(global.part_snow, sSlow_Snowflake, 1, 0, 0);
part_type_size(global.part_snow, 0.1, 0.5, 0, 0);
part_type_scale(global.part_snow, 1, 1);
part_type_colour1(global.part_snow, c_white);
part_type_alpha2(global.part_snow, 0.8, 0);
part_type_speed(global.part_snow, 0.001, 0.002, 0.001, 0.001);
part_type_direction(global.part_snow, 270, 270, 0, 0);
part_type_gravity(global.part_snow, 0.02, 270);
part_type_orientation(global.part_snow, 0, 360, 10, 10, 1);
part_type_blend(global.part_snow, 1);
part_type_life(global.part_snow, 15, 60);


