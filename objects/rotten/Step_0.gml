event_inherited();

depth = -y;


// Attack
if(hitCooldown > 0) { hitCooldown--; }

attack_player();


// Movement
x+=hsp;
y+=vsp;

var dir = point_direction(x, y, Player.x, Player.y);
hsp = lengthdir_x(spd, dir);
vsp = lengthdir_y(spd, dir);

if(hsp != 0 or vsp != 0) {
	sprite = "move";
} else {
	sprite = "idle";
}


