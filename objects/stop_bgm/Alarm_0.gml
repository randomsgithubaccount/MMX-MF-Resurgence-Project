if room=intro_zero
{
	move_player=0
	hsp=0
	b=instance_create_depth(__view_get( e__VW.XView, 0 )+330,__view_get( e__VW.YView, 0 )-100,depth,obj_machboss)
	b.boss=1
	global.canmove=1
	if !audio_is_playing(BGM_SUBBOSS) {sound_music=BGM_SUBBOSS}
	go=0
	
	instance_destroy()
}

