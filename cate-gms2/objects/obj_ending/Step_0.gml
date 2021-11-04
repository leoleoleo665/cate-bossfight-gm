px = px + ((dsin(global.timer * 700) * damn) - px) / 8
py = py + ((dsin(global.timer * 500) * damn) - py) / 8


x = px + 320
y = py + 160


if damn != 0
	damn -= 2.5
	
	
timer += 1


// don't do this

switch (timer) {
	case 120:
	case 180:
	case 240:
	case 300:
		audio_play_sound(snd_undertalehurt, 10, false)
		audio_play_sound(snd_boom_cloud, 10, false)
		image_index += 1
		damn = 100
		break;
		
	case 360:
	case 390:
	case 420:
	case 450:
		audio_stop_sound(snd_boom_cloud)
		audio_play_sound(snd_undertalehurt, 10, false)
		sound = audio_play_sound(snd_boom_cloud, 10, false)
		pitch += 0.025
		audio_sound_pitch(sound, pitch)
		image_index += 1
		damn = 50
		break;
	
	case 480:
	case 500:
	case 520:
	case 540:
		audio_stop_sound(snd_boom_cloud)
		audio_play_sound(snd_undertalehurt, 10, false)
		sound = audio_play_sound(snd_boom_cloud, 10, false)
		pitch += 0.025
		audio_sound_pitch(sound, pitch)
		image_index += 1
		damn = 50

	
	
}


if timer > 550 and timer % 6 == 0 {
	audio_stop_sound(snd_boom_cloud)
	audio_play_sound(snd_undertalehurt, 10, false)
	sound = audio_play_sound(snd_boom_cloud, 10, false)
	pitch += 0.025
	audio_sound_pitch(sound, pitch)
	image_index += 1
	damn += 5
}

if timer > 600
	damn += 5


if timer == 655 {
	instance_create_depth(x, y, -9999, obj_explosion)
	audio_stop_sound(snd_boom_cloud)
	sound = audio_play_sound(snd_boom_cloud, 10, false)
	audio_sound_pitch(sound, 0.5)
	instance_destroy(id)	
}
	


