
if image_alpha>=1 
{
	if sprite_index=spr_geemel_explos
	{
		image_speed=1
		if present_mav.finta=0 && image_index>5 {image_index=4; if alarm[2]<1 {alarm[2]=20}}
		if present_mav.finta=1 && image_index>7 && out=0 
		{
			instance_create_depth(x,y,depth-99,effect_white_scr)
			present_mav.effects=0
			present_mav.move=0
			with(armored_sht) {instance_destroy()}
			with(spr_mavgib) {instance_destroy()}
			with(obj_effect) {instance_destroy()}
			out=1
		}
	}
	
	if sprite_index=spr_geemel_stand
	{image_speed=0.2}
}

if instance_exists(present_mav) && go=1
{
	x=camera_get_view_x(view_camera[0])+(352/2)+(site)
	//if present_mav.move=1 {site=lerp(site,70,0.2)}
}
/*
if sprite_index=spr_vampire_thunder
{
	if image_index>3 && repeats<4 {image_index=0; repeats+=1}
}