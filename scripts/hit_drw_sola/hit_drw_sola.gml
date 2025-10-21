function hit_drw_sola() {
	if ccounter>=1 && solar_starfish.hard=0
	{
	d3d_set_fog(1,c_yellow,0,0)
	draw_sprite_ext(sprite_index,-1,x+1,y,dir,1,rot,c_yellow,image_alpha)
	draw_sprite_ext(sprite_index,-1,x-1,y,dir,1,rot,c_yellow,image_alpha)
	draw_sprite_ext(sprite_index,-1,x,y+1,dir,1,rot,c_yellow,image_alpha)
	draw_sprite_ext(sprite_index,-1,x,y-1,dir,1,rot,c_yellow,image_alpha)
	d3d_set_fog(0,c_yellow,0,0)
	ccounter=0
	}

	draw_sprite_ext(sprite_index,-1,x,y,dir,1,rot,c_white,image_alpha)

	if ccounter>=1
	{
	draw_sprite_ext(sprite_index,-1,x,y,dir,1,rot,c_white,image_alpha)
	}
	if hurt_counter>=1
	{ 
	 draw_set_blend_mode(bm_add)
	 repeat(7) {draw_sprite_ext(sprite_index,-1,x,y,image_xscale,1,0,c_white,1)}
	 draw_set_blend_mode(bm_normal)
	 hurt_counter=0; sound_effect=SFX_ene_hurt
	}




}
