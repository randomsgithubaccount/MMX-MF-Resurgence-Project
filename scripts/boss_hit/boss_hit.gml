function boss_hit() {
	draw_sprite_ext(sprite_index,-1,x,y,dir,image_yscale,angle,c_white,image_alpha)

	if hurt_counter>=1
	{ 
	    draw_set_blend_mode(bm_add)
	    repeat(7) {draw_sprite_ext(sprite_index,-1,x,y,dir,image_yscale,angle,c_white,1)}
	    draw_set_blend_mode(bm_normal)
	    switch (sound_hurt)
	    {
	        case "sword": sound_effect=SFX_STK1; break; 
	        case "buster": sound_effect=SFX_ene_hurt; break;
	        case "boss": sound_effect=snd_bosshurt; break;
	    }
	    hurt_counter=0
	}

	if bright_counter>=2
	{ 
	    draw_set_blend_mode(bm_add)
	    repeat(7) {draw_sprite_ext(sprite_index,-1,x,y,dir,image_yscale,angle,c_white,1)}
	    draw_set_blend_mode(bm_normal)
	    bright_counter=0
	}

	lft=bbox_left
	tp=bbox_top

	if global.show_mask=true
	{
	    draw_set_alpha(0.6)
	    draw_set_color(c_green)
	    draw_rectangle(lft+hitoff_x,tp+hitoff_y,lft+hitoff_x+hitbox_x,tp+hitoff_y+hitbox_y,false)
	    draw_set_color(c_orange)
	    if protect=1 {draw_rectangle(lft+hitoff_xp,tp+hitoff_yp,lft+hitoff_xp+hitbox_xp,tp+hitoff_yp+hitbox_yp,false)}
	    draw_set_color(c_white)
	    draw_set_alpha(1)
	}



}
