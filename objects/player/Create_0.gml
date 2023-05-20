tempo = 0;

// Structures
info			= {
	
};

cam				= {
	target: Player,
	x: Player.x,
	y: Player.y,
	spd: 0.1,
	w: camera_get_view_width(view_camera[0]),
	h: camera_get_view_height(view_camera[0]),
	
	xx: 0,
	yy: 0,
	shakePower: 2,
	shakeValue: 0,
};


// Movement Variables
move			= true;
spd				= 0.5;
hsp				= 0;
vsp				= 0;


// life
hp				= 3;
hitBlink		= false;
hitBlinkCd		= 0;


// Hitbox Settings
hitbox_w		= 20;
hitbox_h		= 14;


// Sprite Settings
sprite			= "idle";


// Features
pissing			= false;


// Weapon Settings
equip = [
	1, 								// Weapon Id's
	1
];

equipIndex = 0;
