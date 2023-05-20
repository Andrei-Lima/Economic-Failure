x+=hsp;
y+=vsp;

if(falling == true) {
	vsp = vsp + GRAVITY;
} else {
	hsp = 0;
	vsp = 0;
}
