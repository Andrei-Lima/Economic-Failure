var prob = irandom(100);

if(prob > 95) {
	var bp = instance_create_depth(x, y, depth, RottenBodyPart);
	bp.vsp -= random_range(minVsp, maxVsp);
	bp.hsp = random_range(minHsp, maxHsp);
	bp.sprite = bodypartsSPRITE;
	bp.index = 3;
}
else if(prob > 80) {
	var bp = instance_create_depth(x, y, depth, RottenBodyPart);
	bp.vsp -= random_range(minVsp, maxVsp);
	bp.hsp = random_range(minHsp, maxHsp);
	bp.sprite = bodypartsSPRITE;
	bp.index = 2;
}
else if(prob > 75) {
	var bp = instance_create_depth(x, y, depth, RottenBodyPart);
	bp.vsp -= random_range(minVsp, maxVsp);
	bp.hsp = random_range(minHsp, maxHsp);
	bp.sprite = bodypartsSPRITE;
	bp.index = 1;
}

//show_debug_message(prob);