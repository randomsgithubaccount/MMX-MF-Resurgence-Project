switch(sprite_index)
{
	case zprethunder:
	
		if repeats>2
		{
		sprite_index=zthunder
		image_index=0
		repeats=0
		}
		
		sound_effect=sfx_thunder
		image_index=2
		repeats+=1
		
	break;
	
	case zstands:
	
		sprite_index=zstand
		image_index=0
		sound_effect=sfx_turtledrone
		
	break;
	
	case zstand:
	
		if repeats>2 
		{
			sprite_index=zstands; repeats=0
		}
		sound_effect=sfx_turtledrone
		image_index=0
		repeats+=1
		
	break;	
	
	case ztele:
	
	sprite_index=zapp
	image_index=0
	
	if instance_exists(playerparent)
	{
		xsite=playerparent.x
		ysite=camera_get_view_y(view_camera[0])+altura
	}
	
	if xsite>camera_get_view_x(view_camera[0])+352-20 {xsite=camera_get_view_x(view_camera[0])+352-32}
	if xsite<camera_get_view_x(view_camera[0])+20 {xsite=camera_get_view_x(view_camera[0])+32}
			
	x=xsite
	y=ysite
			
	if instance_exists(playerparent)
	{
		if x>playerparent.x
		{dir=-1}
		if x<playerparent.x
		{dir=1}
	}

	break;
	
	case zapp:
	
		hsp=0
		vsp=0
		sprite_index=zray
		image_index=0	
		
	break;
	
	case zray:
	
		image_index=1	
		sound_effect=sfx_aleteov
	break;

	case zspawn:
	
		image_index=6	
		
	break;
	
	case zspawn2:
	
		image_index=6	
		
	break;
	
	
	case zshoriu:
	
		image_index=4	
		
	break;
	
	case zpreshoriu:
	
		image_index=3	
		
	break;
}