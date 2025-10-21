switch(sprite_index)
{
	case zaro:
		
		sprite_index=zstand
		if mode=0 {status="movearo"} else {status="stand"}
		sound_effect=sfx_mudada
	
	break;
	
	case ztackle:
		
		image_index=1
	
	break;
	
	case zcharge:
	
		if repeats<5
		{
			image_index=1
			repeats+=1
		}
		else
		{
			sprite_index=ztackle
			image_index=0
			repeats=0
		}
	
	break;
	
	case zprearo:
	
		if repeats<5
		{
			image_index=3
			repeats+=1
		}
		else
		{
			if mode=0
			{
				sprite_index=zaro
				aro1=instance_create_depth(x,y-38,depth-1,obj_higharo)
				aro2=instance_create_depth(x,y-38,depth-1,obj_higharo)
			
				ef=instance_create_depth(x,y-38,depth-1,obj_effect)
				ef.sprite_index=spr_imploth
				ef.image_speed=1.3
			
				if instance_exists(cr)
				{
					with(cr) {instance_destroy()}
				}
			}
			
			if mode=1
			{
				sprite_index=zaro
			
				if instance_exists(cr)
				{
					with(cr) {on=1; vspeed=ball_spd}
				}
			}
			
			if mode=2
			{
				sprite_index=zaro
				
				if !instance_exists(obj_highshield1) && !instance_exists(obj_highshield2)
				{
					if instance_exists(cr)
					{
						with(cr) {out=1}
					}
				
					sh=instance_create_depth(x+32*dir,y-48,depth-1,obj_highshield1)
					sh.dir=dir
					sh2=instance_create_depth(x+32*-dir,y-48,depth-1,obj_highshield2)
					sh2.dir=-dir
				}
				else
				{
					if instance_exists(obj_highshield1) {obj_highshield1.on=1}
					if instance_exists(obj_highshield2) {obj_highshield2.on=1}
				}
			}
			
			image_index=0
			repeats=0
		}
	
	break;	
	
	case zshot1:
	
		if count_shots>=total_shots
		{
			sprite_index=zshot2
			image_index=0
			count_shots=0
		}
		else
		{
			image_index=3
			count_shots+=1
			
			shot=instance_create_depth(x+35*dir,y-50,depth-1,obj_highshot)
			if instance_exists(playerparent)
			{shot.direction=point_direction(x+35*dir,y-50,playerparent.x,playerparent.y-16)}
			else {if dir=1 {shot.direction=0} else {shot.direction=180}}
			shot.speed=5
		}
		
	break;	
	
	case zshot2:
	
		if count_shots>=total_shots
		{
			sprite_index=zstand
			status="stand"
			image_index=0
			mis=0
			count_shots=0
		}
		else
		{
			image_index=3
			count_shots+=1
			
			shot=instance_create_depth(x+35*dir,y-50,depth-1,obj_highshot)
			if instance_exists(playerparent)
			{shot.direction=point_direction(x+35*dir,y-50,playerparent.x,playerparent.y-16)}
			else {if dir=1 {shot.direction=0} else {shot.direction=180}}
			shot.speed=5
		}
		
	break;
	
	case zintro:
	
		image_index=4
		
	break;
	
	case zulti:
		image_index=3
	break;
}