/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("E"))){
	for(var i = 0;i <9;i++){
		if(oInvi.inv[i][0] ==-1){
			oInvi.inv[i][0] =1;
			i = 9;
			oPlayer.atk += oSword.atk;
		}
		
		
	}
	audio_play_sound(snd_collect,0,0);
	with(other){
		instance_destroy();
	}
	
}