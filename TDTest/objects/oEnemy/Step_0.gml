/// @description Insert description here
// You can write your code in this editor
if(hp<=0) instance_destroy();
path_speed = global.spd * spd;

//Check and apply afflictions
if (array_length_1d(afflictions) > 0) {
	
	for (var i = 0; i < array_length_1d(afflictions); i++) {
		var aff_name = afflictions[i];
		if(aff_name == undefined)
		continue;
		var aff_strength = affliction_strengths[i];
		var aff_end_time = affliction_end_times[i];
		var aff_base_time = affliction_base_time[i];
		
		debuff_time = date_second_span(date_current_datetime(), aff_end_time);
		
		var aff_total_duration = aff_base_time / (room_speed / global.base_room_speed);
		var aff_time_deduction = aff_base_time - aff_total_duration;
		
		if(debuff_time - aff_time_deduction <= 0) {
			//To be removed	
			switch (aff_name) {
				case "slow":
					spd = base_spd;
					if(overlay == c_silver)
					overlay = c_white;
				break;
				
			}
			debuff_time = 0;
			afflictions[i] = undefined;
			
			
		}
		else {
			//To be affected
			
			show_debug_message(string(debuff_time - aff_time_deduction));
			switch (aff_name) {
				case "slow":
					if(spd != base_spd - (base_spd * aff_strength))
					spd = base_spd - (base_spd * aff_strength);
					
					if(overlay == c_white)
					overlay = c_silver;
					part_emitter_region(global.part_sys, particle_emitter, x-16, x+16, y-32, y, 0, 0);
					part_emitter_burst(global.part_sys, particle_emitter, global.part_snow, 1);
				break;
				
			}
			
			
		}
		
	}
	
}