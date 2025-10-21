/// @description // NORMAL ENEMY //////
function scr_hitbox_buster(argument0) 
{
	with(parenemy)
	{
	    if protect=1
	    {
	        if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,false))
	        {
	        sound_effect=snd_clink; with(other){cristal=1; instance_destroy()}
	        }
	        else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
	        {
	            enehp-=argument0
	            hurt_counter+=1
	            sound_hurt="buster"
	            if enehp>0 {with(other){instance_destroy()}}
	        }
	    }
	    else
	    {
	        if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
	        {
	            enehp-=argument0
	            hurt_counter+=1
	            sound_hurt="buster"
	            if enehp>0 {with(other){instance_destroy()}}
	        }
	    }
	}

	///// SOLID ENEMY //////

	with(parenemy_solid)
	{
	    if protect=1
	    {
	        if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,false))
	        {
	        sound_effect=snd_clink; with(other) {cristal=1; instance_destroy()}
	        }
	        else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
	        {
	            enehp-=argument0
	            hurt_counter+=1
	            sound_hurt="buster"
	            if enehp>0 {with(other){instance_destroy()}}
	        }
	    }
	    else
	    {
	        if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
	        {
	            enehp-=argument0
	            hurt_counter+=1
	            sound_hurt="buster"
	            if enehp>0 {with(other){instance_destroy()}}
	        }
	    }
	}

	///// NO SOLID ENEMY //////

	with(parEnemynohit)
	{
	    if protect=1
	    {
	        if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,false))
	        {
	        sound_effect=snd_clink; with(other){cristal=1; instance_destroy()}
	        }
	        else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
	        {
	            enehp-=argument0
	            hurt_counter+=1
	            sound_hurt="buster"
	            if enehp>0 {with(other){instance_destroy()}}
	        }
	    }
	    else
	    {
	        if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
	        {
	            enehp-=argument0
	            hurt_counter+=1
	            sound_hurt="buster"
	            if enehp>0 {with(other){instance_destroy()}}
	        }
	    }
	}

	///// BOSS //////

	with(bossparent)
	{
	    if protect=1 or resentido=2
	    {
	        if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,false))
	        {
	            sound_effect=snd_clink
	            a=instance_create_depth(x + random_range(-5,5),y - ((sprite_height/2) + random_range(-5,5)),depth,exp_busters)
	            a.sprite_index=spr_exp_clink
	            a.image_xscale=image_xscale
	            a.image_speed=0.5
	            with(other){cristal=1; instance_destroy()}
	        }
	        else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,false))
	        {
	            resentido=1
	            global.bosshp-=argument0
	            hurt_counter+=1
	            sound_hurt="boss"
	            if global.bosshp>0 {with(other){instance_destroy()}}
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
	            if global.bosshp>0 {with(other){instance_destroy()}}
	        }
	    }
	}
}
