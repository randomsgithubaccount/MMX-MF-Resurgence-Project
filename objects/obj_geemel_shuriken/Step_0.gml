/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if back=1
{
	spd+=0.6
	var tx, ty;
	// target position:
	if instance_exists(obj_geemel)
	{
	nearest=instance_nearest(x,y,obj_geemel)
	tx = nearest.x
	ty = nearest.y-25
	}
	// rotate towards target:
	if instance_exists(obj_geemel)
	{direction = angle_rotate(direction, point_direction(x, y, tx, ty), spd)}
	// making sure rocket is rotated correctly visually:

	image_angle = direction
	// accelerate until at maximum speed:
	speed = min(speed + 0.25, 6)
	
	if place_meeting(x,y,obj_geemel) && spd>11 {instance_destroy()}
}

if x<camera_get_view_x(view_camera[0])+64 && hspeed<0 {back=1}
if x>camera_get_view_x(view_camera[0])+352-64 && hspeed>0 {back=1}
if y<camera_get_view_y(view_camera[0])+64 && vspeed<0 {back=1}
if y>camera_get_view_y(view_camera[0])+240-64 && vspeed>0 {back=1}

if instance_exists(ztrail) 
{
	ztrail.x=x+lengthdir_x(speed,direction)
	ztrail.y=y+lengthdir_y(speed,direction)
	ztrail.alpha=0.5
}

if instance_exists(ztrail2) 
{
	ztrail2.x=x+lengthdir_x(speed,direction)
	ztrail2.y=y+lengthdir_y(speed,direction)
	ztrail2.alpha=0.5
}

eff+=0.5;

if eff>=1
{
	trail=instance_create_depth(x,y,depth,traileff); 
	trail.image_alpha=0.6;
	trail.sprite_index=sprite_index;
	trail.image_index=image_index;
	trail.image_speed=0;
	trail.spd=0.1;
	eff=0;
}