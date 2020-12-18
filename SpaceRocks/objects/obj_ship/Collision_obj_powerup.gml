/// @description Insert description here
// You can write your code in this editor

with(other){
	var powerup_type = image_index;
	instance_destroy();
	
}

switch(powerup_type){
	case powerups.invicible:
	//make player invicilbe
	invicible = true;
	alarm[1] = 8 * room_speed;
	break;
	
	default:
		//change player's guns
		guns = powerup_type;
		alarm[0] = 5* room_speed;
	break;
}