randomize();


// Macros
#macro WIDTH display_get_gui_width()
#macro HEIGHT display_get_gui_height()
#macro GRAVITY 0.1


global.debug = false;


// Global scripts loadup
weapon_catalog();
item_catalog();


// Fonts
global.font = font_add_sprite_ext(
	sFont, "abcdefghijklmnopqrstuvwxyz1234567890/", true, 2
);



























// Primeira stream com voz!!
for(var i = 0; i < 100; i++) {
	instance_create_layer(200+i*16, 200+i*2, "Enemies", Rotten);
}