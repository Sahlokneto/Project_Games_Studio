/// @description Insert description here
// You can write your code in this editor

//point_in_rectangle()

if(mouse_x > x+15.9){
	x = x+16;
}else if(mouse_x < x ){
	x -=16;
}else if(mouse_y > y +15.9){
	y +=16;
}else if(mouse_y < y ){
	y -=16;
}
/*
x = mouse_x;
y = mouse_y;