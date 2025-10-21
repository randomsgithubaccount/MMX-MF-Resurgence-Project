if spr=1
{
zdoor=s_door2
zdooro=s_dooropen2
zdoorc=s_doorclose2

if sprite_index=s_doorclose {sprite_index=zdoorc}
}

if dire=0
{
	if dir=1 {forzex=x+171}
	if dir=-1 {forzex=x-171}
	dire=1
}

if cerrado=0 
{
    if instance_exists(Zero) or instance_exists(MegamanX) or instance_exists(Axl) or instance_exists(Vile)
    {
		playerparent.vsp=0
		playerparent.hsp=0
		if image_angle=0 {playerparent.x+=0.5*dir} else {playerparent.y+=0.5*dir}
		View.hspd=3
		View.vspd=3
    }
    else 
	{
		View.hspd=3
		View.vspd=3
		playerparent.vsp=0
		playerparent.hsp=0		
		if image_angle=0 {playerparent.x+=0.5*dir} else {playerparent.y+=0.5*dir}
		image_speed=0
	}

    if dir=1
    {
	View.top=top
	View.bottom=bottom
	View.left=left
	View.right=right
    }
	
    if dir=-1
    {
	View.top=topl
	View.bottom=bottoml
	View.left=leftl
	View.right=rightl
    }
}

if cerrado=1 
{
	playerparent.hsp=0
	playerparent.vsp=0
	__view_set( e__VW.HSpeed, 0, 8 )
}

View.cine=1