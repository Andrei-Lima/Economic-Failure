
depth = -y;
tempo++;


// Script loading
key_catalog();
get_collision(Collision);


// Movement
if(move == true) {
	x+=hsp;
	y+=vsp;
} 
else if(move == false) {
	sprite = "idle";
}

var dir			= point_direction(0, 0, RIGHT-LEFT, DOWN-UP);
var del			= (RIGHT-LEFT != 0) or (DOWN-UP != 0);

hsp				= lengthdir_x(spd * del, dir);
vsp				= lengthdir_y(spd * del, dir);


// Camera
var shake		= power(cam.shakeValue, 2) * cam.shakePower;
cam.xx			= random_range(-shake,shake);
cam.yy			= random_range(-shake,shake);

if(cam.shakeValue > 0) { 
	cam.shakeValue -= 0.1;
	alarm[0] = 20; 
}
	
if(cam.target != noone) {
	cam.x = lerp(cam.x, cam.target.x, cam.spd)+cam.xx;
	cam.y = lerp(cam.y, cam.target.y, cam.spd)+cam.yy;
	
	camera_set_view_pos(view_camera[0], cam.x-cam.w/2, cam.y-cam.h/2);
}


// Sprite changes
if(del != 0) {
	sprite = "move";
} 
else {
	sprite = "idle";
}


// Hp settings
if(hitBlink == true) {
	hitBlinkCd += .2;
	
	if(hitBlinkCd % 2) {
		image_alpha = 0;
	} 
	else {
		image_alpha = 1;
	}
	
	if(alarm[1] < 0) { alarm[1] = 120; }

} else if(hitBlink == false) {
	
}


// Weapon
if(mouse_wheel_down() && equipIndex < array_length(equip)-1) {
	equipIndex ++;
} else if(mouse_wheel_up() && equipIndex > 0) {
	equipIndex --;
}


#region EXTRA



#endregion
