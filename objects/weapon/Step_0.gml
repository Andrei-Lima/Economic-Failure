
with(Player) {
	other.weapon_id = equip[equipIndex];
}

// Follow the player axis
x = Player.x;
y = Player.y-14;

depth = -2022;

recoil = max(0, recoil - 1);

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);