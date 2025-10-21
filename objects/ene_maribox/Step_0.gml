hit=y-(sprite_height/2)
scr_ene_motion()

if instance_exists(playerparent)
{
	if point_distance(x,y,spotx,spoty)<4 {if alarm[0]<1 {alarm[0]=40}}
	
	if target=1
	{
		direction=irandom_range(45,135)
		speed=1
		
		if instance_exists(box)
		{
			box.hsp=0
			box.vsp=0
		}
		
		target=2
	}
}

if target=0
{
	instance_activate_object(box)
	
	if instance_exists(box)
	{
	    mspd=point_distance(x,y,spotx,spoty)
		spd=min(mspd,max_spd)
	    direction_fly = point_direction(x,y,spotx,spoty)
	    hsp = lengthdir_x(spd,direction_fly)*min(mspd,1)
	    vsp = lengthdir_y(spd,direction_fly)*min(mspd,1)
		box.hsp = hsp
		box.vsp = vsp
	}
}
else
{
	if libre=0
	{
		if instance_exists(box)
		{
			box.grv_speed=0.2
			libre=1
		}
	}
}