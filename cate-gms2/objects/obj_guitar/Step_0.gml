
if intro == false {
	x = obj_jinx4.x - 2
	y = obj_jinx4.y + 12
}
else { // hardcoded instance id!!! cringe!!!
	x = inst_2D28C6F5.x - 2 
	y = inst_2D28C6F5.y + 12
}


if intro == true or obj_jinx4.hp > 0  {
	if clicked() and !audio_is_playing(snd_head_shake) {
		if intro == false {
			obj_jinx4.switchguitar *= -1
			obj_jinx4.hp -= 1
			
			global.hp += 1
			audio_play_sound(snd_head_shake, 10, false)
			global.attackcooldown = 61	
		}
	
	
		audio_play_sound(snd_minecraft_hit, 10, false)
	}


	if angletimer < 5
		image_angle += 1	
	
	else
		image_angle -= 1	


	angletimer += 1

	if angletimer == 10
		angletimer = 0
	
	

	if sizetimer <= 160 and sizetimer > 80 {
		image_xscale += 0.0002
		image_yscale += 0.0002
	}

	if sizetimer < 80 {
		image_xscale -= 0.0002
		image_yscale -= 0.0002
	}

	if sizetimer == 0
		sizetimer = 160
	
	sizetimer -= 1
	if intro == false and obj_jinx4.starttimer == 0 {
	
		attacktimer += 1
		if attacktimer < notes {
			instance_create_depth(x, y, -10001, obj_note)
			audio_play_sound(snd_elecguitar, 10, false)
		}


		if attacktimer == 120 and obj_jinx4.hp <= 3
			notecooldown += 1


		if 2 < (0.3 * obj_jinx4.hp) {
			if attacktimer >= 240 + bonuswait {
				attacktimer = 0
				bonuswait = 0	
				notes = irandom_range(40, 120)
			}
		}
		else if attacktimer >= 120 + (0.3 * obj_jinx4.hp) + bonuswait {
			attacktimer = 0
			bonuswait = 0	
			notes = irandom_range(40, 120)
		}
	
	
		if notecooldown == 5 {
			bonuswait = 120
			notecooldown = 0	
		}
	}
}
else {
	image_xscale += 0.01
	image_yscale += 0.01
	image_alpha -= 0.01
	if image_alpha == 0
		instance_destroy(id)
}