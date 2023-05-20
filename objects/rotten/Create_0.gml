
// Movement variables
spd			= 0.2;
hsp			= 0;
vsp			= 0;

hp			= 3;

minHsp		= 0.1;
maxHsp		= 0.5;
minVsp		= .5;
maxVsp		= 1;


// Sprite settings
sprite		= "idle";
image_blend = choose(
	$FFFFFF, $E5E5E5, $CCCCCC
);


// Bodypart
bodypartsINDEX = choose(1, 2);
bodypartsSPRITE = sRottenBodyParts;


// Attack
hit					= 0;
hitCooldown			= 0;
hitCooldownTime		= 120;

damage				= 2;