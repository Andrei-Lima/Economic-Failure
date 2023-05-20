
switch(sprite) {
	case "idle":
		sprite_index = sRotten;
		break;
	case "move":
		sprite_index = sRottenMove;
		break;
}

draw_self();

if(Player.x >= x) {
	image_xscale = 1;
} else {
	image_xscale = -1;
}

