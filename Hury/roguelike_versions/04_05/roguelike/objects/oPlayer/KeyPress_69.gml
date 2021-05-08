/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,oItem)){
	item = instance_place(x,y,oItem);
	with(item){
		if(visible and pickable){
	
			for(var i=0; i<inv_size;i++){		
				if(inv[i]==-1 ){
					visible = false;
					pickable = false;
					inv[i] = id;
					audio_play_sound(snd_collect,0,0);
					//x = 0;
					//y = 0;
					exit;
				}
			}
		}
	}
}