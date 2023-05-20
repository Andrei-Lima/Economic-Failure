function get_collision(obj){

var c = obj;

if(place_meeting(x+hsp, y, c)) {
	while(!place_meeting(x+sign(hsp), y, c)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}

if(place_meeting(x, y+vsp, c)) {
	while(!place_meeting(x, y+sign(vsp), c)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

}