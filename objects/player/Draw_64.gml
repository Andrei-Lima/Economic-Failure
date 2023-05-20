
draw_text(10, 10, equipIndex);

// GUI
for(var i = 0; i < hp; i++) {
	var size = sin(tempo * 0.05) * 0.1;
	var offset = 40;
	var pos;
	
	if(i % 2 == 1) {
		pos = -1;
	} else if(i % 2 == 0) {
		pos = 1;
	}
	
	draw_sprite_ext(
		sHp, 0, 150+i+offset*pos, 100+i*offset, size+(3-i/5), size+(3-i/5), 0, c_white, 1
	);
}

for(var j = 0; j < array_length(equip); j++) {
	var c;
	
	if(j = equipIndex) {
		c = c_white;
	} else {
		c = c_gray;
	}
	
	draw_sprite_ext(
		global.weapon[equip[j], 1], -1, 50, (HEIGHT-200)+j*64, 
		5, 5, 0, c, 1
	);
}