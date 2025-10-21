hit=y

if created=0
{
	switch(image_angle)
	{
		case 0:
		x-=29
		break;
	
		case 180:
		x+=29
		break;
	
		case 90:
		y+=29
		break;
	
		case 270:
		y-=29
		break;
	}
	created=1
}
if distance_to_object(playerparent)<100 && on=0
{ 
	on=1
}

if on=1 
{
	if shake<=0.5 {shake=0.5}
	smoke_force=1
	cc+=0.3
	if cc>1
	{
		smo=instance_create_depth(x+random_range(-10,10) + lengthdir_x(10,image_angle) ,y+random_range(-10,10)+lengthdir_y(10,image_angle),depth+choose(-1,1),ob_smoke_flame)
		smo.hspeed=lengthdir_x(smoke_force,image_angle+random_range(-70,70))
		smo.vspeed=lengthdir_y(smoke_force,image_angle+random_range(-70,70))
		cc=0
	}
	x+=lineal_move(x,startx,0.4)
	y+=lineal_move(y,starty,0.4)
	if x=startx && y=starty {on=2}
}