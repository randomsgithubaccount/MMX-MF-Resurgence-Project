scr_hitbox_normal(0.4,0.4)

if out=0
{
	g+=15
	if g>=360 {g=0}

	y+=lengthdir_y(6,g)
	hspeed+=lineal_move(hspeed,0,0.1)

	if hspeed=0 
	{
		out=1
	}

	if instance_exists(playerparent)
	{
		if g>180 {depth=playerparent.depth+1} else {depth=playerparent.depth-1}
	}
}
else
{
	if instance_exists(playerparent)
	{
		depth=playerparent.depth+1
		x=lerp(x,playerparent.x,0.1)
		y=lerp(y,playerparent.y-16,0.1)
	}
	
	if place_meeting(x+4,y,playerparent) or place_meeting(x-4,y,playerparent) {instance_destroy()}
}