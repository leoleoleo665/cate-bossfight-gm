
timer -= 1
if timer <= 0 {
	timer = 206
	image_alpha = 0
}

	

if timer == 166 {
	if irandom_range(0, 2) == 0 {
		if choose(0, 1) == 0 
			y = irandom_range(20, 300)	
		else
			y = mouse_y

		image_index = 0
		image_alpha = 1
	}
	else
		timer = 206
	
}


if timer == 146 
	audio_play_sound(snd_a_piano, 10, false)



else if timer < 146 and timer >= 122 {
	if timer % 4 == 0
		image_index = 1
	else
		image_index = 0
}

else if timer == 121 {
	image_index = 0
	instance_create_depth(-640, y, -10000, obj_sillyjinxlaser)
	audio_play_sound(snd_drum_boing, 10, false)
	audio_play_sound(snd_boom_cloud2, 10, false)
}
if timer < 60
	image_alpha -= 0.02