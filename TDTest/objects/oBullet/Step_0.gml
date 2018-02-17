/// @description Insert description here
// You can write your code in this editor
if(stops_at_destination && distance_to_point(destination_x, destination_y) < 2){
	//arrived at destination
	
	//AOE
	if(area_of_effect > 0) {
		//Explode
		
		effect_create_below(ef_smokeup, destination_x, destination_y, choose(0, 1, 2), c_dkgray);
		var particle = instance_create_depth(destination_x, destination_y, -9, oExplosion);
		particle.alarm[0] = 3;
		particle.image_xscale = area_of_effect / particle.sprite_width;
		particle.image_yscale = area_of_effect / particle.sprite_height;
		var allEnemies = [];
		var enemiesToDamage = [];
		var amountOfEnemies = instance_number(oEnemy);
		// First, make a list of all instances of the given type
		for (var i = 0; i < amountOfEnemies; i++ )
				allEnemies[i] = instance_find(oEnemy, i);

		var count = 0;
		// Then, find all instances inside the given radius
		for (var i = 0; i < amountOfEnemies; i++ )
		{
			if (allEnemies[i] && point_distance(allEnemies[i].x, allEnemies[i].y, destination_x, destination_y) <= area_of_effect) {
				enemiesToDamage[count] = allEnemies[i];
				count++;
			}
		}
		
		//Damage all the enemies by factor from explosion source
		
		for (var i = 0; i < array_length_1d(enemiesToDamage); i++ )
		{
			var enemy = enemiesToDamage[i];
			var distance=point_distance(destination_x,destination_y,enemy.x,enemy.y);
			
				// Factor
				var f=(area_of_effect-distance)/area_of_effect;
     
				// Damage
				var d=damage*f;
				enemy.hp -= d;    
			
		}
		
		
		
		
		
		
	}
	
	
	instance_destroy();
}