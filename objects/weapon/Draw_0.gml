
if(weapon_id != 0) {
	sprite_index = global.weapon[weapon_id, 1];
	
	draw_self();
	
	
	// Draw ammo
	draw_set_font(fnt_main);
	
	draw_set_color(c_black);
	draw_text_transformed(
		x+12.5, y+2.5, string(ammo)+"/"+string(global.weapon[weapon_id, 2]),
		.25, .25, 0
	);
	
	draw_set_color(c_white);
	draw_text_transformed(
		x+12, y+2, string(ammo)+"/"+string(global.weapon[weapon_id, 2]),
		.25, .25, 0
	);
	
	
	var mouse_axis	= point_direction(x, y, mouse_x, mouse_y);
	image_angle		= mouse_axis;
	
	if(ammo > 0 && mouse_check_button_pressed(mb_left)) {
		
		recoil				= 7;
		var precision		= 5;
	
		shot				= audio_play_sound(global.weapon[weapon_id, 6], 1, false);
		audio_sound_pitch(shot, random_range(0.8, 1.2));
	
		proj				= instance_create_depth(x, y, depth, par_proj);
		with(proj) {
			proj_id			= other.weapon_id;
			direction		= mouse_axis + random_range(-precision, precision);
			speed			= 8;
			damage			= global.weapon[other.weapon_id, 5];
			image_angle		= other.image_angle;
		}
		
		particle			= instance_create_depth(x, y, depth, BulletParticle);
		particle.vsp		-= random(2.0);
		if(mouse_x > x) {
			particle.hsp = -random(3.0);
		} else if(mouse_x < x) {
			particle.hsp = random(3.0);
		}
	
		ammo --;
	
		Player.cam.shakeValue = 1;
	}
}


if(mouse_x < x) {
	image_yscale = -scale;
} else {
	image_yscale = scale;
}

recoil = max(0, recoil - 1);

// Reloading
if(ammo == 0) {
	if (keyboard_check_pressed(ord("R"))) {
		alarm[0] = global.weapon[weapon_id, 3];
	}
	
	draw_set_halign(fa_center);
	
	draw_set_color(c_black);
	draw_text_transformed(
		x+.5, y+16.5, "Reload by pressing R",
		.25, .25, 0
	);
	
	draw_set_color(c_white);
	draw_text_transformed(
		x, y+16, "Reload by pressing R",
		.25, .25, 0
	);
}

image_xscale = scale;