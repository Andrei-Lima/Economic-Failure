event_inherited();

depth = -y;
vsp = vsp + 0.1;

if(falling == true) {
	image_angle = random(360);
} else if(falling == false) {
	vsp = 0;
}
