if sprite_index=spr_warning_out 
{
	global.boss=1
	if room=vsspiketurtoroid
	{instance_create_depth(__view_get( e__VW.XView, 0 )+280,__view_get( e__VW.YView, 0 )-5,depth,spike_turtloid_i)}
	if room=vsspinelswamp
	{spineel_frog.intro=2}
	if room=vsvampire
	{obj_vampire_intro.go=1}
	if room=vsflameburst
	{flame_burstnyx.start=1}
	if room=vssolarstarfish
	{solar_starfish.start=1}
	if room=vsahera
	{ahera_sorceress.start=1}
	if room=vszain
	{obj_zain.go=1}
	if room=vsgeemel
	{obj_geemel_intro.go=1}
	if room=vsdyna
	{obj_dynamo_intro.go=1}
	if room=vsdouble
	{obj_double_intro.go=1}
	if room=vshighmax
	{obj_highmax_intro.go=1}
	global.canmove=0
	instance_destroy()
}

if room=vsdouble
{fate=0}

if sprite_index=spr_warning_snd 
{
	if repeats>4 {sprite_index=spr_warning_out; if fate=1 {sound_music=BGM_FATE}}; repeats+=1
}

if sprite_index=spr_warning_intro {sprite_index=spr_warning_snd; sound_effect=warning ; sound_effect=warning ; sound_effect=warning }

