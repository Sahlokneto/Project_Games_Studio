/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_left)){
	image_angle = image_angle +6;
}

if(keyboard_check(vk_right)){
	image_angle = image_angle -6;
}

if(keyboard_check(vk_up)){
	motion_add(image_angle,0.04);
}

if(keyboard_check(vk_down)){
	motion_add(image_angle,-0.04);
}

if(keyboard_check_pressed(vk_space)){
	 create_bullet(image_angle,bulletSpd,faction,id);
}

move_wrap(true,true,sprite_height/2);