/// @description Insert description here
// You can write your code in this editor
var projectile_damage = 0;
var projectile_collision_on = true;
var projectile_is_piercing = false;

//Afflictions
var projectile_affliction = undefined;
var projectile_affliction_strength = undefined;
var projectile_affliction_stacks = undefined;
var projectile_affliction_time = undefined;


with(other) {
	projectile_damage = damage;
	projectile_collision_on = collides_with_enemies;
	projectile_is_piercing = is_piercing;
	
	projectile_affliction = bullet_affliction;
	projectile_affliction_strength = bullet_affliction_strength;
	projectile_affliction_stacks = bullet_affliction_stacks;
	projectile_affliction_time = bullet_affliction_time;
	
	
	if(collides_with_enemies && !is_piercing)
	instance_destroy();
}

//Affliction
if(projectile_affliction != undefined && projectile_affliction != "") {
	
	var alreadyAffected = false;
	var sameAfflectionIndex = undefined;
	
	for(var i = 0; i < array_length_1d(afflictions); i++) {
	
		if(afflictions[i] == undefined)
			continue;
	
		if (projectile_affliction == afflictions[i]) {
			alreadyAffected = true;
			sameAfflectionIndex = i;
			break;
		}
	}
	
	if(alreadyAffected) {
		
		if(!projectile_affliction_stacks && affliction_strengths[sameAfflectionIndex] <= projectile_affliction_strength && affliction_end_times[sameAfflectionIndex] < date_inc_second(date_current_datetime(), projectile_affliction_time)) {
			//New affliction is stronger
			affliction_strengths[sameAfflectionIndex] = projectile_affliction_strength;
			affliction_end_times[sameAfflectionIndex] = date_inc_second(date_current_datetime(), projectile_affliction_time);
		}
		else if (projectile_affliction_stacks) {
			//Add time and strength
			affliction_strengths[sameAfflectionIndex] += projectile_affliction_strength;
			affliction_end_times[sameAfflectionIndex] = date_inc_second(affliction_end_times[sameAfflectionIndex], projectile_affliction_time);
		}
		
		
	}
	else {
		var index = array_length_1d(afflictions);
		afflictions[index] = projectile_affliction;
		affliction_strengths[index] = projectile_affliction_strength;
		affliction_stackss[index] = projectile_affliction_stacks;
		affliction_base_time[index] = projectile_affliction_time;
		affliction_end_times[index] = date_inc_second(date_current_datetime(), projectile_affliction_time);
		
	}
	
	
}









if(projectile_collision_on || projectile_is_piercing)
hp -= projectile_damage;