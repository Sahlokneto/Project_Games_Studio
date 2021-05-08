// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Attack(argument0,argument1){
	if(argument0.canAtk==0){
		ScreamShake(0.4,1);
		audio_play_sound(snd_death,0,false);
		with(argument1){
			
			life = life - argument0.atk;
			
			
			//draw_sprite(sSword,0,argument0.x+8,argument0.y);
			//instance_create_layer(argument0.x+8,argument0.y,layer,oSkeleton);
		}
		argument0.life += argument0.atk*argument0.lifeSteal/100;
		//oPlayer.life -= argument0.atk;		
		argument0.canAtk = argument0.atkCharge;
	}	
}


function atk_animation(argument0){
	var player = argument0;
	var time = 2;
	
	with(player){
		var instX = instance_place(x+hsp,y,oEnemy)
		if(place_meeting(x+hsp, y,instX)){
			canWalk = false;
			//hsp = 0;
			//dsp = 0;
		
			Attack(oPlayer,instX);
		}

		var instY = instance_place(x,y+vsp,oEnemy);
		if(place_meeting(x,y+vsp, oEnemy)){
			canWalk = false;
			//vsp = 0;
			//dsp = 0;
		
			Attack(oPlayer,instY);
		}
	}
}