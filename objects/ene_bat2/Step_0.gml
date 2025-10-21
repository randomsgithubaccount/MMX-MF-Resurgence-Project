hit=y-(sprite_height/2)

if go=0
{
	g+=spd
	if g>360 {g=0}
	
	x= target.x + lengthdir_x(dist,g)
	y= target.y-alt + lengthdir_y(dist,g)
	
	dist=lerp(dist,64,0.05)
	spd=lerp(spd,5,0.05)
	
	if dist>63.9 {obj_vampire.shot_bats=1; go=1}
}

if go=1
{
	g+=spd
	if g>360 {g=0}
	
	x= target.x + lengthdir_x(dist,g)
	y= target.y-alt + lengthdir_y(dist,g)
	
	dist=lerp(dist,48,0.1)
	spd=lerp(spd,0,0.05)
}

if go=2
{
	enehp=1
	if instance_exists(playerparent)
	{
		direction=point_direction(x,y,playerparent.x,playerparent.y-16)
		speed=-4
	}
	go=3
}

if go=3 
{
	speed=lerp(speed,5,0.1)
}


if go=10
{
	enehp=2
	if instance_exists(playerparent)
	{
		direction=point_direction(x,y,x+lengthdir_x(dist,g),y+lengthdir_y(dist,g))
		speed=-4
	}
	go=11
}

if go=11
{
	speed=lerp(speed,5,0.1)
}

if x>camera_get_view_x(view_camera[0])+352+100 {instance_destroy()}
if x<camera_get_view_x(view_camera[0])-100 {instance_destroy()}

cc+=0.15
if cc>1 
{
	cc=0
	ef=instance_create_depth(x,y-12,depth-1,obj_effect)
	ef.sprite_index=spr_batsmoke
}
