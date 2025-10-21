if sprite_index=spr_gaiaburst
{image_speed=0.7; speed=0}
if sprite_index=spr_gaiabuster_full
{image_speed=0.7}

if sprite_index=spr_gaiabuster_full {speed=lerp(speed,7,0.2)}

image_angle=direction
/*
if place_meeting(other.x,other.y,near)
{residb=instance_create_depth(x,other.y,depth-1,resid_gaia); residb.image_angle=image_angle-180; with(other) {instance_destroy()}}
*/	

if alarm[0]<1 {alarm[0]=5}

if rebot>max_rebot
{
	if !instance_exists(resid_gaia)
	{
		residb=instance_create_depth(x,y,depth-1,resid_gaia)
		residb.image_angle=image_angle
		residb.sprite_index=spr_gaiaburst
	}
	instance_destroy()
}

if near!=noone
{
	if instance_exists(near)
	{
		if near.x>camera_get_view_x(view_camera[0])+352 && near.x<camera_get_view_x(view_camera[0])
		{
			instance_destroy()
		}

		if near.y>camera_get_view_y(view_camera[0])+144 && near.y<camera_get_view_y(view_camera[0])
		{
			instance_destroy()
		}
	}
}

scr_hitbox_buster_ground(3)

if distance_to_object(playerparent)>300 {instance_destroy()}
