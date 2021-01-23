/// @description Insert description here
// You can write your code in this editor

//if(lives<0) room_goto(rm_gameOver);

if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case room_start:
			
			room_goto(room_game);
		break;
						
		case room_game:			
		break;		
		
		case rm_gameOver:
		
	}
}

if(room == room_game){
/*	if lives <0
	room_goto(rm_gameOver);
	*/
	exit;
}
