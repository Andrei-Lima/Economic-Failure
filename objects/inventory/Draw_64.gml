
if(open == true) {
	
	draw_set_alpha(.5);
	var c = c_black;
	var width = 500;
	var height = 350;
	
	draw_rectangle_color(
		WIDTH-50, 50, WIDTH-width-50, HEIGHT-height-50,
		c, c, c, c, false
	);
	
	draw_set_alpha(1);
	
	draw_rectangle_color(
		WIDTH-50, 50, WIDTH-width-50, HEIGHT-height-50,
		c, c, c, c, true
	);
	
	for(var i = 0; i < array_length(global.inventory); i++) {
		
		draw_set_valign(fa_center);
		
		draw_text_transformed(
			WIDTH-width-35, 70+i*50, 
			global.item[global.inventory[i][0], 0], 1, 1, 0
		);
		
		draw_set_halign(fa_right);
		
		draw_text_transformed(
			WIDTH-150, 70+i*50, 
			string(global.inventory[i][1])+"x", .75, .75, 0
		);
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_left);
	}
	
}
