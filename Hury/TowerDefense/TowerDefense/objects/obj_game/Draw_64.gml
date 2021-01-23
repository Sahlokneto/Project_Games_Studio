/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_set_colour(c_white);


//draw_set_alpha(1);
//draw_set_colour(c_white);
//draw_text(x, y, "LEVEL 1");
switch(room){
		case room_start:
			draw_set_halign(fa_center);
			draw_text(630,300, "How Long Can You Survive?");
			draw_text(630,350, "Press ENTER To Start");
		break;
						
		case room_game:
			draw_set_halign(fa_left);
			draw_text(x, y, "Lives: "+string(lives));
			draw_text(x, y+13, "Score: "+string(score));
			var time = get_timer();
			time = time/(power(10,6));
		
			draw_text(x, y+26, "Current time: "+string(time));
			draw_text(x, y+39, "Coins: "+string(global.coins));
			
		break;
		
		case rm_gameOver:
			draw_set_halign(fa_center);
			draw_text(630,300, "You Fucking Lost, Loser");
		break;
		
	}