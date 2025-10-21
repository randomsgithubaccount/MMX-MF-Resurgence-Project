function scr_rebot_buster() {
	other.coll=(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,true)) && other.damaged=0	
	other.coll2=(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,true))
	
	if (other.coll) or (other.coll2)
	{	
		if instance_exists(playerparent)
		{
			other.near=instance_nth_nearest(playerparent.x,playerparent.y-16,parenemy,100)
		}
		else
		{
			other.near=instance_nth_nearest(other.x,other.y,parenemy,100)
		}
		
		if instance_exists(other.near)
		{
			other.direction=point_direction(other.x,other.y,other.near.x,other.near.bbox_bottom-(sprite_height/2))
			residb=instance_create_depth(other.x+lengthdir_x(8,other.direction),other.y,depth-1,resid_gaia)
			residb.image_angle=other.image_angle
			residb.sprite_index=spr_gaiaburst
			other.rebot+=1
		}
		
		if other.near=id {with(other) {instance_destroy()}}
	}


}
