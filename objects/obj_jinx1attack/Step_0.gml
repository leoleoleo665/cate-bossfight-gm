if global.hard
	move_towards_point(x + dcos(dir) * 50, y + dsin(dir) * 50, move * global.fm)
else
	move_towards_point(x + dcos(dir) * 50, y + dsin(dir) * 50, move * global.fm)

if move > 0
	move -= 0.1 * global.fm
	
	
if on_mouse() {
	global.hp -= 1
	play_sound(snd_basketball_bounce, false)
	instance_destroy(id)
}

destroytimer -= global.execute
if destroytimer <= 0
	instance_destroy(id)
