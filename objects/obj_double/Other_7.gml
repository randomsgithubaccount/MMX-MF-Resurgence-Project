switch(sprite_index)
{	
	case zpreulti:
	
		if status="final"
		{
			if repeats>3 && repeats<20 
			{
				roter+=30*roter_dir
				sw=instance_create_depth(x+8,y-16,depth-1,obj_double_sw)
				sw.spx=sw.x+lengthdir_x(80,roter)
				sw.spy=sw.y+lengthdir_y(80,roter)
				sw.dest_time=60
			}
			
			if repeats<30
			{
				image_index=0
				repeats+=1
			}
			else
			{
				sprite_index=zfinal
				
				angu=45
				final=instance_create_depth(x,y-20,depth,obj_double_final)
				final.image_angle=angu
				final.direction=angu
				angu+=90
				final=instance_create_depth(x,y-20,depth,obj_double_final)
				final.image_angle=angu
				final.direction=angu
				angu+=90	
				final=instance_create_depth(x,y-20,depth,obj_double_final)
				final.image_angle=angu
				final.direction=angu
				angu+=90
				final=instance_create_depth(x,y-20,depth,obj_double_final)
				final.image_angle=angu
				final.direction=angu
				
				alarm[4]=60
				sound_effect=sfx_dynabeam2
				image_index=0
				repeats=0
			}			
		}
		else
		{
			if repeats<5
			{
				image_index=0
				repeats+=1
			}
			else
			{
				sprite_index=zulti
				sound_effect=sfx_dynabeam2
				image_index=0
				repeats=0
			}
		}
	
	break;
	
	case zpre:
	
		if repeats<5
		{
			image_index=0
			repeats+=1
		}
		else
		{
			sprite_index=zatk
			image_index=0
			repeats=0
		}
	
	break;
	
	case spr_double_up:
	
		image_index=1
	
	break;
	
	case spr_double_down:
	
		image_index=1
	
	break;	

	case spr_double_wait:
	
		image_index=1
	
	break;	

	case spr_double_wait2:
	
		image_index=1
	
	break;	
	
	case zatk:
	
		if count_sw>=total_sw
		{
			sprite_index=zstand
			mis=0
			count_sw=0
		}
		else
		{
			sprite_index=zpre
			mis=0
			count_sw+=1
		}
		
	break;	
	
	case zulti:
	
		if count_ulti>=total_ulti
		{
			status="fall"
			count_ulti=0
			mis=0
		}
		else
		{
			sprite_index=zpreulti
			count_ulti+=1
			mis=0
		}
		
	break;	
}