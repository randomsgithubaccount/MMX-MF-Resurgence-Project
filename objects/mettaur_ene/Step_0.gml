hit=bbox_bottom-(sprite_height/2)
boundary = x>camera_get_view_x(view_camera[0]) && x<camera_get_view_x(view_camera[0])+352 && y>camera_get_view_y(view_camera[0]) && y<camera_get_view_y(view_camera[0])+224

scr_ene_motion()

switch(status)
{
	case "jump":

	if (boundary)
	{
		if free=false
		{
			vsp=-4.5
			sprite_index=spr_met_jump; hsp=1*dir

			repeat(3) {a=instance_create_depth(x,y,depth,smokeobj); a.hspeed=random_range(-2,2)}
			
			status="jump2"
		}
	}
	
	break;
	
	case "shot":
	
		if (boundary)
		{
			if free=false && sprite_index!=spr_met_shot
			{
				sprite_index=spr_met_shot; image_index=0; hsp=0
				status="jump2"
			}
		}
		
	break;
	
	case "run":
	
		if (boundary)
		{
			if free=false && sprite_index!=spr_met_run
			{
				sprite_index=spr_met_run; image_index=0;
				status="running"
			}
		}
		
	break;
}

switch(sprite_index)
{
	case spr_met_stand:
	
		hsp=0
		shot=0
		if alarm[0]<1 {alarm[0]=60*atk_time}
		status="stand"
		
		if instance_exists(playerparent)
		{
			if playerparent.x>x
			{dir=1}
			else {dir=-1}
		}
		
	break;

	case spr_met_run:
	
		if alarm[0]<1 {alarm[0]=120}
		shot=0
		image_speed=1
		hsp=0.7*dir
		
		if !collision_point(x+8*dir,y+8,parSolid,true,true) && !collision_point(x+8*dir,y+8,obj_ghostSolid,true,true) {status="jump"}
		
		if collision_point(x+32*dir,y-4,parSolid,true,true) && !collision_point(x+16*dir,y-64,parSolid,true,true) {status="jump"}
		
		if place_meeting(x+12*dir,y,parSolid) 
		{
			if instance_exists(playerparent)
			{
				if playerparent.x>x
				{dir=1}
				else {dir=-1}
			}
		}
		
	break;
	
	case spr_met_shot:
	
		image_speed=1
		
		if free=false && image_index>3 && shot=0
		{
			a=instance_create_depth(x+16*dir,y-8,depth,armored_sht); a.image_xscale=dir; a.hspeed=3*dir
			shot=1
		}
	
	break;
	
	case spr_met_jump:
	
		image_speed=1
		
		if free=false && vsp>=0
		{
			sprite_index=spr_met_stand;
			status="stand"
			image_index=0
			repeat(3) {a=instance_create_depth(x,y,depth,smokeobj); a.hspeed=random_range(-2,2)}
		}
		
		if vsp<0 && free=true {image_index=min(image_index,3)}
		if vsp>=0 && free=true {image_index=min(image_index,5)}
		
	break;
}