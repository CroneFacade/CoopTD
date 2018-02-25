/// @description Insert description here
// You can write your code in this editor
if(hp<=0) instance_destroy();
path_speed = global.spd * spd;

//Check and apply afflictions
if (array_length_1d(afflictions) > 0) {
	
	for (var i = 0; i < array_length_1d(afflictions); i++) {
		var aff_name = afflictions[i];
		var aff_strength = affliction_strengths[i];
		var aff_end_time = affliction_end_times[i];
		
		debuff_time = date_second_span(date_current_datetime(), aff_end_time);
		
		if(date_current_datetime() > aff_end_time) {
			//To be removed	
			switch (aff_name) {
				case "slow":
					spd = base_spd;
				break;
				
			}
			debuff_time = 0;
			afflictions[i] = undefined;
			
			
		}
		else {
			//To be affected
			
			switch (aff_name) {
				case "slow":
					if(spd != base_spd - (base_spd * aff_strength))
					spd = base_spd - (base_spd * aff_strength);
				break;
				
			}
			
			
		}
		
	}
	
}