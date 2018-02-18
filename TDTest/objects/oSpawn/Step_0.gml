/// @description Insert description here
// You can write your code in this editor
if (global.playerHealth <= 0)
{
    restart = true;
    if (keyboard_check_pressed(vk_space))
    {
		get = undefined;
        room_restart();
    }
	if (!end_round_logic) {
		http_get("http://cronee-001-site1.btempurl.com/api/Leaderboard/New?name="+global.player_name+"&level="+string(global.level-1)+"&pleb=da8w76daw87d6aw8c7aw876daw876xc");
		alarm[2] = 15;
		 var obj = instance_find(oTest_Size,0);
		 obj.visible = true;
		 end_round_logic = true;
	}
}
else {
	var obj = instance_find(oTest_Size,0);
		 obj.visible = false;
}


if(!running && keyboard_check_pressed(vk_space)) {
		
	alarm[0] = 1;
	alarm[1] = room_speed * 5;
	running = true;
}