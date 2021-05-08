/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_sprite(sCreeper,0,x+32,y);
var pc;
pc = (life / max_life) * 100;
draw_healthbar(x+4, y, x+12, y+1, pc, c_black, c_red, c_lime, 0, true, true);


//draw_sprite(sBLight,0,x+8,y+8);


/*
draw_set_font(Font1);
draw_set_color(c_lime);

draw_text(camera_,y+4, "Hello");
