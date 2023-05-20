
image_blend = playerColor;

// Draw the hitbox
var w = hitbox_w;
var h = hitbox_h;

if(global.debug == true) {
	draw_rectangle_color(
		x-w/2, y-h/2, x+w/2, y+h/2,
		hitbox_clr, hitbox_clr, hitbox_clr, hitbox_clr, true
	);
}


// Draw the Player
if(hsp != 0) {
	image_xscale = sign(hsp);
}

switch(sprite) {
	case "idle":
		sprite_index = sPlayerIdle;
		break;
	case "move":
		sprite_index = sPlayerMove;
		break;
}

draw_self();