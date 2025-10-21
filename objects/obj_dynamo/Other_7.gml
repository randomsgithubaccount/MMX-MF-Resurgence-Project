switch(sprite_index)
{	
	case zslashair:
		sprite_index=zjump; image_index=0; vsp=-3; dir*=-1; hsp=2*-dir
	break;	
	
	case zbuster:
	
		sprite_index=zjump; image_index=0; vsp=-3; dir*=-1; hsp=2*-dir
		buster=instance_create_depth(x,y+16,depth,obj_predynabuster)
		buster.direction=270
		buster.image_angle=270
		buster.speed=5
		
	break;
	
	case zslash:
	
		if slashes<=0
		{
		sprite_index=zgrab2
		image_index=0
		}
		else
		{
			instance_create_depth(x,y-32,depth-1,obj_dyna_sw)
			sound_effect=sfx_dynasword
			snd=0
			slashes-=1
			image_index=0
		}
		
	break;	
	
	case zpre:
	
		if repeats<10
		{
			image_index=3
			repeats+=1
		}
		else
		{
			sprite_index=zpower
			sound_effect=sfx_dynabeam2
			image_index=0
			repeats=0
		}
	
	break;	
	
	case zpower:
	
		beams=1
		
		repeat(10)
		{
			if !place_meeting(x+(32*beams)*dir,y,parSolid)
			{
				instance_create_depth(x+(32*beams)*dir,y,depth-1,obj_dynaprebeam)
			}
			else {break;}
			
			beams+=1
		}
		sprite_index=zstand; image_index=0; protect=0
	
	break;	
	
	case zgrab:
	
		if !instance_exists(obj_dyna_sw)
		{
			sprite_index=zstand; image_index=0
		}
		else
		{
			sprite_index=zgrab2; image_index=0
		}
	break;	
	
	case zshield:
	
		if out=1 
		{
			sprite_index=zstand; image_index=0; protect=0
		}
		else
		{image_index=3}
		
	break;	
		
	case spr_dyna_intro2:
		sprite_index=zstand; image_index=0; intro=0;
	break;
	
	case zjump:
		image_index=2
	break;
	
	case zjump2:
		image_index=2
	break;
}