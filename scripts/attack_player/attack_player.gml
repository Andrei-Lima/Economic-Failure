function attack_player(){

if(place_meeting(x, y, Player)) {
	
	if(hit = 0 && hitCooldown = 0) {
		hitCooldown			= hitCooldownTime;
		
		with(Player) {
			hp --;
			hitBlink = true;
			cam.shakeValue = 1
		}
	}
}

}