/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_left)){
	image_angle = image_angle +6;
}

if(keyboard_check(vk_right)){
	image_angle = image_angle -6;	
}

if(keyboard_check_pressed(vk_up)){

	if(tempoDash == 1 && tempoDashIsAllowed == 1){
		x= x+lengthdir_x(48,image_angle);
		y = y+lengthdir_y(48,image_angle);
		tempoDashIsAllowed = 0;
		//alarm[4] = 4 * room_speed;
		alarm[3] = 1*room_speed;
	}else{
		tempoDash = 1;
	}
	alarm[4]= 0.5*room_speed;
}

if(keyboard_check(vk_up)){
	/*
	var teste = alarm[4] = 2*room_speed;
	
	if(teste == -1){
		tempoDash = 1;
	}
	if(tempoDash != 0){
		x= x+lengthdir_x(32,image_angle);
		y = y+lengthdir_y(32,image_angle);
		tempoDash =0;
	}
	*/
	
	//tempoDash = 1;

	/*
	if(tempoDash == 1){
		 create_bullet(image_angle,bulletSpd,faction,id,guns,1);
	}
		*/
	if(speed<3){
		motion_add(image_angle,0.06);
	}
	else{
		speed = speed - 0.06;
		motion_add(image_angle,0.06);
	}
	
	exhaustCounter++;
	
	if(exhaustCounter >= 4){
		exhaustCounter = 0;
		var len = sprite_height*.4,
		var _xx = x - lengthdir_x(len,image_angle),
		var _yy = y - lengthdir_y(len,image_angle);
		with(obj_particles){
			part_particles_create(partSys,_xx,_yy, partTypeExhaust,1);
		}
	}
}


if(keyboard_check_released(vk_up)){
	//	if(keyboard_check_pressed(vk_up)){
	//		
	//	}
	}



if(keyboard_check(vk_down)){
	
	if(keyboard_check(vk_up)){
		// alarm [3] = 0.125*room_speed;
	//	alarm [3] = 2*room_speed;
	//	create_bullet(image_angle,bulletSpd,faction,id,guns);
		speed = 0;
	}
	else{
	motion_add(image_angle,-0.05);
	}
}

if(keyboard_check_pressed(vk_space)){
	 //alarm[3] = room_speed;
	 
	 create_bullet(image_angle,bulletSpd,faction,id,guns,1);
	 exit;
}

move_wrap(true,true,sprite_height/2);