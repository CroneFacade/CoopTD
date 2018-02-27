if(mouseOver(x,y,sprite_width,sprite_height)) {
	if (global.tool_tip_showing_for != tower_sprites[0]) {
		var toolTip = instance_create_depth(room_width / 2, 660, -1112, oUI_Main_Tooltip);
		toolTip.tool_tip_text = tower_tool_tip;
		global.tool_tip_showing_for = tower_sprites[0];
	}
}
else if(global.tool_tip_showing_for == tower_sprites[0]) {
	instance_destroy(instance_find(oUI_Main_Tooltip, 0));
	global.tool_tip_showing_for = noone;
}