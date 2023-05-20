
depth = -y;

x+=hsp;
y+=vsp;

x = lerp(x, Player.x+side, spd);
y = lerp(y, Player.y-16, spd);

y = y + sin(tempo * 0.05) * 0.2;
tempo++;

if(Player.hsp > 0) {
	side = -16;
} else if(Player.hsp < 0) {
	side = 16;
}