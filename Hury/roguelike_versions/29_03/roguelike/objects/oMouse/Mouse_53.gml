/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(oPlayer)<16){
	
	if(place_meeting(x, y, oEnemy)){
			
			var inst = instance_place(x,y,oEnemy);
			Attack(inst);
			//instance_destroy(inst);
	
	}else if(place_meeting(x, y, oItems)){
		for(var i = 0;i <9;i++){
			if(oInvi.inv[i][0] ==-1){
				oInvi.inv[i][0] =1;
				i = 9;
				oPlayer.atk += oSword.atk;
			}
		}
		audio_play_sound(snd_collect,0,0);
		var inst = instance_place(x,y,oItems);
			instance_destroy(inst);
	}
}