// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//var _dir = argument[0];
//var _spd = argument[1];
//var _fac = argument[3];






function create_bullet(_dir,_spd,_fac,_creator){
	
	//var _creator = self;
	
	var inst = instance_create_layer(x,y,"Instances",obj_bullet);
	audio_play_sound(snd_zap,1,false);
	
	with(inst){
		direction = _dir;
		speed = _spd;
		faction = _fac;
		self.creator = _creator;
		
		if(faction == factions.ally)image_blend = c_aqua;
		else if(faction== factions.enemy) image_blend =  c_red;
	}
	
//	audio_play_sound(snd_zap,1,false);
	
}