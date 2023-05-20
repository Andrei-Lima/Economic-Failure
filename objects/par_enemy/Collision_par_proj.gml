hp -= other.damage;
instance_destroy(other);

dirX = 0;
dirY = 0;

if(Player.x >= x) {
	dirX = -1;
} else if(Player.x < x) {
	dirX = 1;
}

if(Player.y >= y) {
	dirY = 1;
} else if(Player.y < y) {
	dirY = -1;
}

for(var i = 0; i < irandom_range(1, 10); i++) {
	var blood = instance_create_depth(x, y, depth, BloodParticle);
	blood.hsp = random_range(0.1, 3.0)*dirX;
	blood.vsp = -random_range(0.1, 1.5)*dirY;
}