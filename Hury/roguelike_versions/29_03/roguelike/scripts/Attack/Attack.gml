// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Attack(argument0){
	ScreamShake(0.4,1);
	audio_play_sound(snd_death,0,false);
	with(argument0){
		life = life - oPlayer.atk;
		//draw_sprite(sSword,0,argument0.x+16,argument0.y);
		//instance_create_layer(argument0.x+16,argument0.y,layer,oSkeleton);
	}

	oPlayer.life -= argument0.atk;


}