/// @description Insert description here
// You can write your code in this editor
switch(menu_index) {
	case 0:
		room_goto(rSPGame);
		break;
	case 1:
		room_goto(rLobby);
		break;
	case 2:
		game_end();
		break;
	
}