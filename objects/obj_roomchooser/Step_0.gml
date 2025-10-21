if roomchoosed=1
{
	if ctrl.shot_pressed or keyboard_check_pressed(vk_enter)
	{
	global.char=selecter2
	sound_effect=snd_heart35
	instance_create_depth(x,y,depth,TransitionBlack)
	}
}

if roomchoosed=0
{
	if ctrl.shot_pressed or keyboard_check_pressed(vk_enter)
	{
		sound_effect=snd_destbox
		global.nextrooms2=selecter
		global.nextrooms=NowLoading
		roomchoosed=1
	}
}

