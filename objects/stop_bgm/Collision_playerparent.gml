music_out=1

if room=intro_zero
{
	if alarm[0]<1 {alarm[0]=180}

	View.right=x+352-64; View.left=x-64
	playerparent.hsp=0
	global.canmove=0
}

