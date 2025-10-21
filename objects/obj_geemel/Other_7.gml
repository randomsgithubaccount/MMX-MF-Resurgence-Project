switch(sprite_index)
{
	case zshuri:
		sprite_index=zstand; image_index=0
		if mode=0 {mode=1} else {mode=0}
		
	break;
	
	case spr_geemel_jutsu:
	
		if xtremes=2 {sprite_index=spr_geemel_jutsu2; image_index=0; obj_shuripara.trans=1}
	
	break;
		
	case zshuri_air:
		sprite_index=zjump; image_index=0
	break;	
	
	case zexplo:
		sprite_index=zjump; image_index=0; center=0
	break;	
		
	case spr_geemel_intro:
		sprite_index=zstand; image_index=0; intro=0;
	break;
	
	case ztele:
	
		if xtremes=0
		{
		if center=0
		{
			if teles<=0
			{
				sprite_index=ztele2
				sound_effect=sfx_geemel_tele
				image_index=0
				
				if instance_exists(playerparent)
			    {
				xsite=playerparent.x
				ysite=playerparent.y-64	
				}
				
				if xsite>camera_get_view_x(view_camera[0])+352-32 {xsite=camera_get_view_x(view_camera[0])+352-32}
				if xsite<camera_get_view_x(view_camera[0])+32 {xsite=camera_get_view_x(view_camera[0])+32}
				if ysite>camera_get_view_y(view_camera[0])+240-32 {ysite=camera_get_view_y(view_camera[0])+240-32}
				if ysite<camera_get_view_y(view_camera[0])+48 {ysite=camera_get_view_y(view_camera[0])+48}
			
				x=xsite
				y=ysite
			
				if instance_exists(playerparent)
			    {
				    if x>playerparent.x
				    {dir=-1}
				    if x<playerparent.x
				    {dir=1}
			    }
			}
			else
			{
				sprite_index=ztele2
				sound_effect=sfx_geemel_tele
				image_index=0
				
				i=irandom_range(2,7)
				if instance_exists(playerparent)
			    {
				xsite=playerparent.x+choose(-64,-32,32,64)
				ysite=playerparent.y-16*i
				}
				if xsite>camera_get_view_x(view_camera[0])+352-38 {xsite=camera_get_view_x(view_camera[0])+352-38}
				if xsite<camera_get_view_x(view_camera[0])+38 {xsite=camera_get_view_x(view_camera[0])+38}
				if ysite>camera_get_view_y(view_camera[0])+240-38 {ysite=camera_get_view_y(view_camera[0])+240-38}
				if ysite<camera_get_view_y(view_camera[0])+64 {ysite=camera_get_view_y(view_camera[0])+64}
			
				x=xsite
				y=ysite
			
				if instance_exists(playerparent)
			    {
				    if x>playerparent.x
				    {dir=-1}
				    if x<playerparent.x
				    {dir=1}
			    }
			}
		}
		else
		{
			sprite_index=ztele2
			sound_effect=sfx_geemel_tele
			image_index=0
			
			xsite=camera_get_view_x(view_camera[0])+352/2
			ysite=camera_get_view_y(view_camera[0])+(240/2)-32
		
			x=xsite
			y=ysite
			
			if instance_exists(playerparent)
			{
				if x>playerparent.x
				{dir=-1}
				if x<playerparent.x
				{dir=1}
			}
		}
		
		if global.bosshp<18 
		{
			xsites=camera_get_view_x(view_camera[0])+16*irandom(22)
			ysites=camera_get_view_y(view_camera[0])+16*irandom(14)
			
			if xsites>camera_get_view_x(view_camera[0])+352-38 {xsites=camera_get_view_x(view_camera[0])+352-38}
			if xsites<camera_get_view_x(view_camera[0])+38 {xsites=camera_get_view_x(view_camera[0])+38}
			if ysites>camera_get_view_y(view_camera[0])+240-38 {ysites=camera_get_view_y(view_camera[0])+240-38}
			if ysites<camera_get_view_y(view_camera[0])+80 {ysites=camera_get_view_y(view_camera[0])+80}
				
			sf=instance_create_depth(xsites,ysites,depth,obj_geemel_appi)
			sf.image_xscale=choose(-1,1)
		}
		}
	break;
	
	case ztele2:
		
		if xtremes=0
		{
			if center=0
			{
				if teles<=0
				{
					sprite_index=zshuri_air
					image_index=0
				}
				else
				{
					sprite_index=ztele
					sound_effect=sfx_geemel_tele
					image_index=1
					teles-=1
				}
			}
			else
			{
				sprite_index=zexplo
				image_index=0	
			}
		}
		
		if xtremes=2
		{
			sprite_index=spr_geemel_suriulti
			image_speed=0.7
			image_index=0
		}
		
	break;
	
	case spr_geemel_suriulti:
	
		sprite_index=zjump
		vsp=-1
		hsp=2*-dir
		xtremes=0
		pattern=0
		
	break;
	
	case spr_geemel_jutsu2:

	if xtremes=10
	{
		image_index=0
	}
	
	if xtremes=2
	{
		sprite_index=ztele2
		sound_effect=sfx_geemel_tele
		image_index=0
			
		xsite=camera_get_view_x(view_camera[0])+352/2
		ysite=camera_get_view_y(view_camera[0])+(240/2)-32
		
		x=xsite
		y=ysite
			
		if instance_exists(playerparent)
		{
			if x>playerparent.x
			{dir=-1}
			if x<playerparent.x
			{dir=1}
		}
	}
	break;
}