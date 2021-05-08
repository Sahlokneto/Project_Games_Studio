vsp = vsp + grv;

//horizontal
if(place_meeting(x+hsp, y, obj_collision)){
	repeat(abs(hsp)){
		if(!place_meeting(x+sign(hsp), y, obj_collision))
		{ x+= sign(hsp); }
		else {break;}
	}
	hsp = -hsp;
}

//vertical
if(place_meeting(x,y+vsp, obj_collision)){
				
	
	repeat(abs(vsp)){
		if(!place_meeting(x,y+sign(vsp), obj_collision)){ 
			y += sign(vsp); }
		else {break;}
	}
	vsp = 0;
}

//apply movement
x += hsp;
y += vsp;