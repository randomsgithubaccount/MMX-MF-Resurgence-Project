ycenter=(camera_get_view_y(view_camera[0])+224/2)+lengthdir_y(48,g)
if keyboard_check_pressed(vk_f5) {global.bosshp=0}

if outside=0
{
scr_motion()
}

if outside=1
{
	scr_motion_inv()
	if hsp>=0 {hsp=lerp(hsp,1.4,0.05)}
	else if hsp<0 {hsp=lerp(hsp,-1.4,0.05)}
	vsp=lerp(vsp,-2,0.05)
}

if outside=2
{
	scr_motion_inv()
}

#region BASE FUNCIONES

	hit=y

	if go=1 && !instance_exists(bossbar) && sprite_index=zstand {instance_create_depth(x,y,depth-20,bossbar)}

	if instance_exists(bossbar)
	{
	    if sprite_index=zstand && go=1 && bossbar.nofill=1
	    {
		    if !audio_is_playing(BGMBOSS2) {sound_music=BGMBOSS2; global.canmove=1}
	    }
	}

	if mirror=1 && sprite_index=zstand
	{
	    if instance_exists(playerparent)
	    {
		    if x>playerparent.x
		    {dir=-1}
		    if x<playerparent.x
		    {dir=1}
	    }
	    protect=0
	}
	
	if resentido=2
	{bright_counter+=0.3}

	if intro=0
	{
		if global.bosshp<1 && bossbar.nofill=1
		{
		defeat=instance_create_depth(x,y,depth,maverick_explode)
		defeat.sprite_index=zhurt
		defeat.image_xscale=dir
		instance_destroy()
		}
	}

#endregion-(sprite_height/2)

switch(sprite_index)
{
	case zstand:
		trail=0
		if instance_exists(obj_vampire_ray) {with(obj_vampire_ray) {instance_destroy()}}
		
		if intro=0 && go=1 && bossbar.nofill=1
		{
		g+=6
		if g>=360 {g=0}
		
		if place_meeting(x,y+vsp,parSolid) {g+=6}
		
		image_speed=0.3; protect=0
		
		if outside=0
		{
			hsp=lerp(hsp,1.4*direc,0.05)
		
			if atk="normal" 
			{y=lerp(y,ycenter,0.1)}
		
			if atk="spawn" {vsp=lerp(vsp,2*direc,0.1)}
			
			if darkness>0.8 {sprite_index=ztele; image_index=0}
		}
		
		if x>camera_get_view_x(view_camera[0])+352-64 {direc=-1}
		if x<camera_get_view_x(view_camera[0])+48 {direc=1}
		
		if alarm[3]<1 {alarm[3]=random_range(120,160)}
		
		}
				
		if place_meeting(x,y+abs(vsp),parSolid) && atk="spawn" {sprite_index=zspawn; image_index=0; vsp=0; hsp=0; atk="normal"
			if instance_exists(playerparent)
		    {
			    if x>playerparent.x
			    {dir=-1}
			    if x<playerparent.x
			    {dir=1}
		    }
		}
		if place_meeting(x,y-abs(vsp),parSolid) && atk="spawn" {sprite_index=zspawn2; image_index=0; vsp=0; hsp=0; atk="normal"
			if instance_exists(playerparent)
		    {
			    if x>playerparent.x
			    {dir=-1}
			    if x<playerparent.x
			    {dir=1}
		    }
		
		}
		
	break;
	
	case zstands:
		trail=0
		if instance_exists(obj_vampire_ray) {with(obj_vampire_ray) {instance_destroy()}}
 		if intro=0 && go=1 && bossbar.nofill=1
		{
		g+=6
		if g>=360 {g=0}
		
		if place_meeting(x,y+vsp,parSolid) {g+=6}
		
		image_speed=0.3; protect=0
		
		if outside=0
		{
			hsp=lerp(hsp,1.4*direc,0.05)
		
			if atk="normal" 
			{
				y=lerp(y,ycenter,0.1)
			}
		
			if atk="spawn" {vsp=lerp(vsp,2*direc,0.1)}
			
			if darkness>0.8 {sprite_index=ztele; image_index=0}
		}
		
		if x>camera_get_view_x(view_camera[0])+352-64 {direc=-1}
		if x<camera_get_view_x(view_camera[0])+48 {direc=1}
		
		if alarm[3]<1 {alarm[3]=random_range(120,160)}
		
		}
				
		if place_meeting(x,y+abs(vsp),parSolid) && atk="spawn" {sprite_index=zspawn; image_index=0; vsp=0; hsp=0; atk="normal"
			if instance_exists(playerparent)
		    {
			    if x>playerparent.x
			    {dir=-1}
			    if x<playerparent.x
			    {dir=1}
		    }
		}
		if place_meeting(x,y-abs(vsp),parSolid) && atk="spawn" {sprite_index=zspawn2; image_index=0; vsp=0; hsp=0; atk="normal"
			if instance_exists(playerparent)
		    {
			    if x>playerparent.x
			    {dir=-1}
			    if x<playerparent.x
			    {dir=1}
		    }
		
		}
		
	break;
	
	case zprethunder:
	
		image_speed=0.3
		vsp=lerp(vsp,0,0.2)
		hsp=lerp(hsp,0,0.2)
		
	break;
	
	case zpreshoriu:
	
		image_speed=0.3
		if y>camera_get_view_y(view_camera[0])+140 && flys<=0 {sprite_index=zshoriu; image_index=0}
		if y>camera_get_view_y(view_camera[0])+170 {sprite_index=zshoriu; image_index=0}
		vsp=lerp(vsp,8,0.2)
		hsp=lerp(hsp,6*dir,0.2)
		/*ft=instance_create_depth(x,y,depth-1,flashtrail)
		ft.sprite_index=sprite_index
		ft.image_index=image_index
		ft.image_speed=0
		ft.image_xscale=dir
		ft.image_alpha=0.5*/
		trail=1
		
		b=instance_create_depth(x+random_range(-10,10),y+random_range(-10,10)-10,depth-1,ob_air_gib)
		b.direction=point_direction(x,y,x+hsp,y+vsp)
		b.speed=2
		b.image_angle=point_direction(x,y,x+hsp,y+vsp)
		
	break;
	
	case zshoriu:
		trail=1
		image_speed=0.3
		if image_index>=2 && flys<=0 {sprite_index=zstand; outside=0; image_index=0; g=0; atk="normal"}
		if image_index>=3
		{
		vsp=lerp(vsp,-7,0.2)
		hsp=lerp(hsp,2*dir,0.2)
		/*ft=instance_create_depth(x,y,depth-1,flashtrail)
		ft.sprite_index=sprite_index
		ft.image_index=image_index
		ft.image_speed=0
		ft.image_xscale=dir
		ft.image_alpha=0.5*/
		
		b=instance_create_depth(x+random_range(-10,10),y+random_range(-10,10)-10,depth-1,ob_air_gib)
		b.direction=point_direction(x,y,x+hsp,y+vsp)
		b.speed=1
		b.image_angle=point_direction(x,y,x+hsp,y+vsp)
		}
		else
		{
		vsp=lerp(vsp,0,0.2)
		hsp=lerp(hsp,0,0.2)
		}
			
	break;
	
	case zray:
	
		image_speed=0.3
		dir=direc
		vsp=lerp(vsp,0,0.2)

		
		if x>camera_get_view_x(view_camera[0])+352-60 && direc=1 {sprite_index=zstand}
		if x<camera_get_view_x(view_camera[0])+32 && direc=-1 {sprite_index=zstand}
		
		if x>camera_get_view_x(view_camera[0])+352-80 && direc=1 {hsp=lerp(hsp,0,0.1)}
		else if x<camera_get_view_x(view_camera[0])+48 && direc=-1 {hsp=lerp(hsp,0,0.1)}
		else {hsp=lerp(hsp,4*direc,0.05)}

		
		if image_index>2 && !instance_exists(obj_vampire_ray) {instance_create_depth(x-8,y-2,depth-1,obj_vampire_ray)}
		if instance_exists(obj_vampire_ray) {obj_vampire_ray.x=x-8; base_darkness=0; darkness=lerp(darkness,0,0.1)}
		
	break;
	
	case ztele:
	
		image_speed=0.3		
		g+=3
		if g>=360 {g=0}
		image_speed=0.2; protect=0
		
		hsp=lerp(hsp,0,0.1)
		vsp=lerp(vsp,0,0.1)
		
	break;
	
	case zapp:
	
		if x>camera_get_view_x(view_camera[0])+352/2 {direc=-1} else {direc=1}

		image_speed=0.3
		vsp=lerp(vsp,0,0.2)
		hsp=lerp(hsp,0,0.2)
		
	break;
	
	case zthunder:
		
		image_speed=0.3
		vsp=lerp(vsp,0,0.2)
		hsp=lerp(hsp,0,0.2)
		
		counter+=0.3
		if counter>1 {instance_create_depth(x+irandom_range(-48,48),y+irandom_range(-54,32),depth-1,subboss_magnectgib); counter=0}
		
		if intro=0
		{
			counter_thunder+=0.05
		}
			
		if image_index>=4.5
		{
			
			if repeats>4 && intro!=0
			{
				sprite_index=zstand
				image_index=0
				repeats=0
				intro=0
			}
			sound_effect=sfx_thunderv
			image_index=0
			repeats+=1
		}
		
		if counter_thunder>1 
		{
			while(spot_t[sp]=0)
			{
				sp=irandom(7)
				
				if thunder_quantity<0
				{		
					sprite_index=zstand
					image_index=0
					repeats=0
					intro=0
				}
				
				if spot_t[0]=0 && spot_t[1]=0 && spot_t[2]=0 && spot_t[3]=0 && spot_t[4]=0 && spot_t[5]=0 && spot_t[6]=0 && spot_t[7]=0
				{
						sprite_index=zstand
						image_index=0
						repeats=0
						intro=0
					break;
				}
			}
			
			if spot_t[sp]!=0
			{instance_create_depth(camera_get_view_x(view_camera[0])+spot_t[sp], camera_get_view_y(view_camera[0]),depth-1,ob_thunder_pre)}
			
			thunder_quantity-=1
			spot_t[sp]=0
			counter_thunder=0
		}
		
	break;
	
	case zspawn:
		
		image_speed=1
		
		
		if image_index>=7 && shot_bats=1 && counter>2
		{
				if global.bosshp<10
				{
					i=0
					repeat(totalbats)
					{if instance_exists(bat[i]) {if bat[i].go=1 {bat[i].go=10}}; i+=1}
					sprite_index=zstand; shot_bats=0; i=0
				}
				else
				{
					if instance_exists(bat[i]) 
					{
						if bat[i].go=1 {bat[i].go=2}
					}
					i+=1
				}
				
				if i>totalbats+2 {sprite_index=zstand; y-=16; shot_bats=0; i=0}
				
				counter=0
		}
		
		if shot_bats=1 {counter+=0.1} else {counter=0}
		
		if image_index>=5 && shot_bats=0
		{
			i=0
			repeat(totalbats)
			{
				bat[i]=instance_create_depth(x-16*dir,y-30,depth-1,ene_bat2)
				bat[i].sprite_index=s_bat
				bat[i].g=(360/totalbats)*i
				bat[i].alt=30
				i+=1
			}
			shot_bats=-1
			i=0
		}
		g=270
	break;
	
	case zspawn2:
		
		image_speed=1

		if image_index>=5 && shot_bats=1 && counter>2
		{
				if global.bosshp<10
				{
					i=0
					repeat(totalbats)
					{if instance_exists(bat[i]) {if bat[i].go=1 {bat[i].go=10}}; i+=1}
					sprite_index=zstand; shot_bats=0; i=0
				}
				else
				{
					if instance_exists(bat[i]) 
					{
						if bat[i].go=1 {bat[i].go=2}
					}
					i+=1
				}
				
				if i>totalbats+2 {sprite_index=zstand; shot_bats=0; i=0}
				
				counter=0
		}
		
		if shot_bats=1 {counter+=0.1} else {counter=0}
		
		if image_index>=7 && shot_bats=0
		{
			i=0
			repeat(totalbats)
			{
				bat[i]=instance_create_depth(x-16*dir,y-16,depth-1,ene_bat2)
				bat[i].sprite_index=s_bat
				bat[i].g=(360/totalbats)*i
				bat[i].alt=16
				i+=1
			}
			shot_bats=-1
			i=0
		}
		g=90
	break;
}

if trail=1 
{
	if !instance_exists(ztrail)
	{
		ztrail=instance_create_depth(x,y,depth,obj_trailadv)
		ztrail2=instance_create_depth(x,y,depth,obj_trailadv)
		ztrail.dec_spd=0.8
		ztrail2.dec_spd=0.8
		ztrail2.width=10
	}
	else
	{
		ztrail.x=x
		ztrail.y=y-24
		ztrail.alpha=0.5
	
		ztrail2.x=x
		ztrail2.y=y-24
		ztrail2.alpha=0.5
	}
}

if trail=0
{
	if instance_exists(ztrail) 
	{
		ztrail.alpha*=0.9
		if ztrail.alpha<=0.1 {ztrail.alpha=0; ztrail.x=-50; ztrail.y=-50}
	}
	if instance_exists(ztrail2) 
	{
		ztrail2.alpha*=0.9
		if ztrail2.alpha<=0.1 {ztrail.alpha=0; ztrail2.x=-50; ztrail2.y=-50}
	}
}