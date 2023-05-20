
if(falling) {
	x+=hsp;
	y+=vsp;

	vsp = vsp + GRAVITY;
	
	image_angle += hsp/2;
}

if(fallTime > 0) {
	fallTime -= 1;
} else {
	falling = false;
}

image_angle = sin(tempo * 0.1) * 5;
image_xscale = sin(tempo * 0.05) * 1;
y = y + sin(tempo * 0.05) * 0.1;
tempo ++;
