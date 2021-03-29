x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);
var moveX = 0;
var moveY = 0;
var moveZ = 0;

key_left = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
key_right = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
input_up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
input_down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
q = keyboard_check_pressed(ord("Q"));
e = keyboard_check_pressed(ord("E"));
z = keyboard_check_pressed(ord("Z"));
c = keyboard_check_pressed(ord("C"));
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);
key_jump = keyboard_check_pressed(vk_space);

 moveX = key_right - key_left;
hsp = moveX * 16;
 moveY = input_down - input_up;
vsp = moveY *16;


//if(e){
//	x = x+16;
//	y = y-16;
//}

if(place_meeting(x+hsp, y, obj_collision)){
	hsp = 0;
	dsp = 0;
}

if(place_meeting(x,y+vsp, obj_collision)){
	vsp = 0;
	dsp = 0;
}

//apply movement

x += hsp;
y += vsp;


if((moveX != 0 and hsp != 0 )or (moveY != 0 and vsp != 0)){
	audio_play_sound(snd_step,0,0);
}

//warp

var inst = instance_place(x,y,obj_warp);
if(inst != noone){
	x = inst.targetX;
	y = inst.targetY;
	
}