/// @description Insert description here
// You can write your code in this editor
var i = 1;
if((score/100)==i&&!instance_exists(obj_boss_0)){
//	instance_destroy(obj_faction_neutral);
//	instance_destroy(obj_faction_enemy);
	spawn_off_camera(obj_boss_0,1);
	i +=1;
}

if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
						
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}

if(room == rm_game){
	
	if(score>=10000){
		room_goto(rm_win);
		audio_play_sound(snd_win,1,false);
	}
	/*
	if(score%500 ==0){
		instance_create_layer()
	}
*/
	if(lives <=0){
	audio_play_sound(snd_lose,1,false);
		room_goto(rm_gameover);		
	}
	
}
