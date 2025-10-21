function scr_hitbox_saber(argument0) 
{
	with(parenemy)
	{
	    if protect=1
	    {
	        if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,true)) && other.damaged=0
	        {
	            effectersword+=0.4
	            if effectersword>=2 {a=instance_create_depth(x,hit,depth,slash_effect); a.sprite_index=spr_exp_clink; sound_effect=snd_clink; a.scale=1; effectersword=0}
	        }
	        else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,true))
	        {
	            if other.damaged=0
	            {
	                enehp-=argument0
	                sound_hurt="sword"
	                hurt_counter+=1
	                effectersword+=2
	                other.damaged=1
	            }
	            else 
	            {
	                enehp-=(argument0)/2
	                sound_hurt="sword"
	                hurt_counter+=0.2
	                effectersword+=0.2
	                other.damaged=1
	            }
	            if global.xarmor=0 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); effectersword=0}}
	            if global.xarmor=1 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); b.sprite_index=spr_slashgib3; effectersword=0}}
	        }
	    }
	    else
	    {
	        if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,true))
	        {
	            if other.damaged=0
	            {
	                enehp-=argument0
	                sound_hurt="sword"
	                hurt_counter+=1
	                effectersword+=2
	                other.damaged=1
	            }
	            else 
	            {
	                enehp-=(argument0)/2
	                sound_hurt="sword"
	                hurt_counter+=0.2
	                effectersword+=0.2
	                other.damaged=1
	            }
	            if global.xarmor=0 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); effectersword=0}}
	            if global.xarmor=1 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); b.sprite_index=spr_slashgib3; effectersword=0}}
	        }
	    }
	}

	with(parEnemynohit)
	{
	    if protect=1 
	    {
	        if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,true)) && other.damaged=0
	        {
	            effectersword+=0.4
	            if effectersword>=2 {a=instance_create_depth(x,hit,depth,slash_effect); a.sprite_index=spr_exp_clink; sound_effect=snd_clink; a.scale=1; effectersword=0}
	        }
	        else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,true))
	        {
	            if other.damaged=0
	            {
	                enehp-=argument0
	                sound_hurt="sword"
	                hurt_counter+=1
	                effectersword+=2
	                other.damaged=1
	            }
	            else 
	            {
	                enehp-=(argument0)/2
	                sound_hurt="sword"
	                hurt_counter+=0.2
	                effectersword+=0.2
	                other.damaged=1
	            }
	            if global.xarmor=0 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); effectersword=0}}
	            if global.xarmor=1 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); b.sprite_index=spr_slashgib3; effectersword=0}}
	        }
	    }
	    else
	    {
	        if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,true))
	        {
	            if other.damaged=0
	            {
	                enehp-=argument0
	                sound_hurt="sword"
	                hurt_counter+=1
	                effectersword+=2
	                other.damaged=1
	            }
	            else 
	            {
	                enehp-=(argument0)/2
	                sound_hurt="sword"
	                hurt_counter+=0.2
	                effectersword+=0.2
	                other.damaged=1
	            }
	            if global.xarmor=0 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); effectersword=0}}
	            if global.xarmor=1 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); b.sprite_index=spr_slashgib3; effectersword=0}}
	        }
	    }
	}


	with(parenemy_solid)
	{
	    if protect=1
	    {
	        if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,true)) && other.damaged=0
	        {
	            effectersword+=0.4
	            if effectersword>=2 {a=instance_create_depth(x,hit,depth,slash_effect); a.sprite_index=spr_exp_clink; sound_effect=snd_clink; a.scale=1; effectersword=0}
	        }
	        else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,true))
	        {
	            if other.damaged=0
	            {
	                enehp-=argument0
	                sound_hurt="sword"
	                hurt_counter+=1
	                effectersword+=2
	                other.damaged=1
	            }
	            else 
	            {
	                enehp-=(argument0)/2
	                sound_hurt="sword"
	                hurt_counter+=0.2
	                effectersword+=0.2
	                other.damaged=1
	            }
	            if global.xarmor=0 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); effectersword=0}}
	            if global.xarmor=1 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); b.sprite_index=spr_slashgib3; effectersword=0}}
	        }
	    }
	    else
	    {
	        if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,true))
	        {
	            if other.damaged=0
	            {
	                enehp-=argument0
	                sound_hurt="sword"
	                hurt_counter+=1
	                effectersword+=2
	                other.damaged=1
	            }
	            else 
	            {
	                enehp-=(argument0)/2
	                sound_hurt="sword"
	                hurt_counter+=0.2
	                effectersword+=0.2
	                other.damaged=1
	            }
	            if global.xarmor=0 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); effectersword=0}}
	            if global.xarmor=1 {if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); b.sprite_index=spr_slashgib3; effectersword=0}}
	        }
	    }
	}

	with(bossparent)
	{
	    if protect=1 or resentido=2
	    {
	        if(collision_rectangle(bbox_left+hitoff_xp,bbox_top+hitoff_yp,bbox_left+hitoff_xp+hitbox_xp,bbox_top+hitoff_yp+hitbox_yp,other,true,true))
	        {
	            other.counter_clink+=0.4
	            if other.counter_clink>=2 
	            {        
	            sound_effect=snd_clink
	            a=instance_create_depth(x + random_range(-5,5),y - ((sprite_height/2) + random_range(-5,5)),exp_busters)
	            a.sprite_index=spr_exp_clink
	            a.image_xscale=image_xscale
	            a.image_speed=0.5
	            other.counter_clink=0
	            }
	        }
	        else if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,true))
	        {
	            if other.damaged=0
	            {
	                global.bosshp-=1
	                sound_hurt="boss"
	                hurt_counter+=1
	                effectersword+=2
	                other.damaged=1
	            }
	            else 
	            {
	                alarm[9]=10
	                sound_hurt="sword"
	                hurt_counter+=0.4
	                effectersword+=0.4
	            }
	            if global.xarmor=0 {if effectersword>=2 {b=instance_create_depth(x,y - ((sprite_height/2) + random_range(-5,5)),depth,slash_effect); effectersword=0}}
	            if global.xarmor=1 {if effectersword>=2 {b=instance_create_depth(x,y - ((sprite_height/2) + random_range(-5,5)),depth,slash_effect); b.sprite_index=spr_slashgib3; effectersword=0}}
	        }
	    }
	    else
	    {
	        if(collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,other,true,true))
	        {
	            if other.damaged=0
	            {
	                global.bosshp-=1
	                sound_hurt="boss"
	                hurt_counter+=1
	                effectersword+=2
	                other.damaged=1
	            }
	            else 
	            {
	                alarm[9]=10
	                sound_hurt="sword"
	                hurt_counter+=0.4
	                effectersword+=0.4
	            }
	            if global.xarmor=0 {if effectersword>=2 {b=instance_create_depth(x,y - ((sprite_height/2) + random_range(-5,5)),depth,slash_effect); effectersword=0}}
	            if global.xarmor=1 {if effectersword>=2 {b=instance_create_depth(x,y - ((sprite_height/2) + random_range(-5,5)),depth,slash_effect); b.sprite_index=spr_slashgib3; effectersword=0}}
	        }
	    }
	}



}
