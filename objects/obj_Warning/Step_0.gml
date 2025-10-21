if go=1
{
	if sprite_index=spr_warning_out {image_speed=0.1}

	if sprite_index=spr_warning_snd {image_speed=1}

	if sprite_index=spr_warning_intro 
	{
		image_speed=1
		if floor(image_index)==15 {image_xscale=0}
		if floor(image_index)==1 {image_xscale=2; image_yscale=2}
		if floor(image_index)==3 {image_xscale=2; image_yscale=2}
		if floor(image_index)==5 {image_xscale=2; image_yscale=2}
		if floor(image_index)==7 {image_xscale=2; image_yscale=2}
		if floor(image_index)==9 {image_xscale=2; image_yscale=2}
		if floor(image_index)==11 {image_xscale=2; image_yscale=2}
		if floor(image_index)==13 {image_xscale=2; image_yscale=2}
	}
}

if instance_exists(playerparent)
{
	if playerparent.x>camera_get_view_x(view_camera[0])+64 && playerparent.free=false
	{playerparent.hsp=-playerparent.runspeed; playerparent.sprite_index=playerparent.zrun; moving=1; playerparent.dir=-1}

	if playerparent.x<camera_get_view_x(view_camera[0])+64-16 && playerparent.free=false
	{playerparent.hsp=playerparent.runspeed; playerparent.sprite_index=playerparent.zrun; moving=1; playerparent.dir=1}
	
	if (playerparent.x<=camera_get_view_x(view_camera[0])+64 && playerparent.x>=camera_get_view_x(view_camera[0])+64-16) && playerparent.free=false && moving=1
	{
		if playerparent.x<(camera_get_view_x(view_camera[0])+352/2) {playerparent.dir=1} else {playerparent.dir=-1}
		playerparent.hsp=0; playerparent.sprite_index=playerparent.zstand; moving=0; 
	}	
}

image_xscale=lerp(image_xscale,1,0.2)
image_yscale=lerp(image_yscale,1,0.2)
image_alpha=1