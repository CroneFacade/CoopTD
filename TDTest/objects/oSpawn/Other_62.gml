/// @description Insert description here
// You can write your code in this editor
if (ds_map_find_value(async_load, "id") == get) {
	if (ds_map_find_value(async_load, "status") == 0) {
		r_str = ds_map_find_value(async_load, "result");
		
		var resultMap = json_decode(r_str);
		var list = ds_map_find_value(resultMap, "default");
		var size = ds_list_size(list);
		
		highscore_clear();
		for(var i = 0; i < size; i++) {
			var map = ds_list_find_value(list, i);
			var curr = ds_map_find_first(map);
			var name;
			var level;
			while(is_string(curr)) {
			
			name = ds_map_find_value(map, "Name");
			level = ds_map_find_value(map, "Level");
			
			
			
			
			
			curr = ds_map_find_next(map, curr);
			}
			highscore_add(name, level);
			ds_map_destroy(map);
		}
		ds_list_destroy(list);
		ds_map_destroy(resultMap);
		get = -1;
	}
	
}