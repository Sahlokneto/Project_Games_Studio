/// @description Insert description here
// You can write your code in this editor


if(showInv){
	var j = 0;
	var k = 0;
	for(var i = 0;i < 9;i++){
		if(oInvi.inv[i][0] ==-1){
			if(i > 5){			
				draw_sprite(sSlot,0,oCamera.x-oCamera.view_w_half/2.9+(k*16)+k,oCamera.y-oCamera.view_h_half/1.8+34);
				k++
			}else if(i>2.9){
				draw_sprite(sSlot,0,oCamera.x-oCamera.view_w_half/2.9+(j*16)+j,oCamera.y-oCamera.view_h_half/1.8+17);
				j++
			}else{
				draw_sprite(sSlot,0,oCamera.x-oCamera.view_w_half/2.9+(i*16)+i,oCamera.y-oCamera.view_h_half/1.8);
			}
		}else{
			if(i > 5){			
				draw_sprite(sSword,0,oCamera.x-oCamera.view_w_half/2.9+(k*16)+k,oCamera.y-oCamera.view_h_half/1.8+34);
				k++
			}else if(i>2.9){
				draw_sprite(sSword,0,oCamera.x-oCamera.view_w_half/2.9+(j*16)+j,oCamera.y-oCamera.view_h_half/1.8+17);
				j++
			}else{
				draw_sprite(sSword,0,oCamera.x-oCamera.view_w_half/2.9+(i*16)+i,oCamera.y-oCamera.view_h_half/1.8);
			}
		}
	
	}
}
