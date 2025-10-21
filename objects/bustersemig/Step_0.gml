if sprite_index=b_L3_gstr
{image_speed=1}
if sprite_index=spr_gaiabuster_semi
{image_speed=1}

if sprite_index=spr_gaiabuster_semi {hspeed=5*image_xscale}

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

scr_hitbox_buster_ground(1)

if distance_to_object(playerparent)>300 {instance_destroy()}
