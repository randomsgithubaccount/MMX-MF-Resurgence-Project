/// @description // NORMAL ENEMY //////
function scr_hitbox_buster_ground(argument0) {

	with(parenemy)
	{
		if other.eneid!=id
		{
		    if protect=1 
		    {
				if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,false))
		        {
					sound_effect=snd_clink;
					scr_rebot_buster()
					other.eneid=id
		        }
		        else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
		        {
		            enehp-=argument0
		            hurt_counter+=1
		            sound_hurt="buster"
					scr_rebot_buster()
					other.eneid=id
		        }
		    }
		    else
		    {
		        if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
		        {
		            enehp-=argument0
		            hurt_counter+=1
		            sound_hurt="buster"
					scr_rebot_buster()
					other.eneid=id
		        }
		    }
		}
	}


	///// SOLID ENEMY //////

	with(parenemy_solid)
	{
		if other.eneid!=id
		{
		    if protect=1 
		    {
				if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,false))
		        {
					sound_effect=snd_clink;
					scr_rebot_buster()
					other.eneid=id
		        }
		        else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
		        {
		            enehp-=argument0
		            hurt_counter+=1
		            sound_hurt="buster"
					scr_rebot_buster()
					other.eneid=id
		        }
		    }
		    else
		    {
		        if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
		        {
		            enehp-=argument0
		            hurt_counter+=1
		            sound_hurt="buster"
					scr_rebot_buster()
					other.eneid=id
		        }
		    }
		}
	}

	///// NO SOLID ENEMY //////

	with(parEnemynohit)
	{
		if other.eneid!=id
		{
		    if protect=1 
		    {
				if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,false))
		        {
					sound_effect=snd_clink;
					scr_rebot_buster()
					other.eneid=id
		        }
		        else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
		        {
		            enehp-=argument0
		            hurt_counter+=1
		            sound_hurt="buster"
					scr_rebot_buster()
					other.eneid=id
		        }
		    }
		    else
		    {
		        if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
		        {
		            enehp-=argument0
		            hurt_counter+=1
		            sound_hurt="buster"
					scr_rebot_buster()
					other.eneid=id
		        }
		    }
		}
	}

	///// BOSS //////

	with(bossparent)
	{
		if other.eneid!=id 
		{
		    if protect=1 or resentido=2
		    {
			    if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,false))
		        {
					sound_effect=snd_clink
					a=instance_create_depth(x + random_range(-5,5),y - ((sprite_height/2) + random_range(-5,5)),exp_busters)
		            a.sprite_index=spr_exp_clink
		            a.image_xscale=image_xscale
		            a.image_speed=0.5
					scr_rebot_buster()
					other.eneid=id
		        }
				else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
		        {
		            resentido=1
		            global.bosshp-=argument0
		            hurt_counter+=1
		            sound_hurt="boss"
					scr_rebot_buster()
					other.eneid=id
		        }
		    }
		    else
		    {
		        if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
		        {
		            resentido=1
		            global.bosshp-=argument0
		            hurt_counter+=1
		            sound_hurt="boss"
					scr_rebot_buster()
					other.eneid=id
		        }
		    }
		}
	}


}
