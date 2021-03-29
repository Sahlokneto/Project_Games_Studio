/// @description Insert description here
// You can write your code in this editor
var anim_length = 6;
if(x_frame < anim_length -1){
		x_frame += 15/60;
	}else{x_frame = 0;}
	
if(hsp != 0 or vsp != 0){
	
	if(hsp > 0){
		draw_sprite_ext(spr_goblin_run,x_frame,x,y,5,5,0,c_white,1);
		direcaoLeste = 1;
	}else if(hsp < 0){
		draw_sprite_ext(spr_goblin_run,x_frame,x,y,-5,5,0,c_white,1);
		direcaoLeste = -1;
	}
	
	
}
else if(hsp == 0){
		draw_sprite_ext(spr_goblin_idle,x_frame,x,y,5*direcaoLeste,5,0,c_white,1);
}