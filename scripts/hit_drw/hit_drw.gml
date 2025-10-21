/// @description / HACKED /////
function hit_drw() {

	if hacked=1
	{
	    if counter_hacked<=1
	    {
	    draw_set_blend_mode(bm_add)
	    d3d_set_fog(1,c_yellow,0,0)
	    draw_sprite_ext(sprite_index,-1,x+subVelx,y+subVely-1,dir,1,image_angle,c_yellow,0.6)
	    draw_sprite_ext(sprite_index,-1,x+subVelx,y+subVely+1,dir,1,image_angle,c_yellow,0.6)
	    draw_sprite_ext(sprite_index,-1,x+subVelx+1,y+subVely,dir,1,image_angle,c_yellow,0.6)
	    draw_sprite_ext(sprite_index,-1,x+subVelx-1,y+subVely,dir,1,image_angle,c_yellow,0.6)
	    d3d_set_fog(0,c_yellow,0,0)
	    draw_set_blend_mode(bm_normal)
	    }
	counter_hacked+=0.5
	}

	if counter_hacked>=2 {counter_hacked=0}

	//// DRAW NORMAL & BRIGHT /////

	draw_sprite_ext(sprite_index,-1,x+subVelx,y+subVely,dir,1,image_angle,c_white,image_alpha)

	if hurt_counter>=1 {bright=1}

	draw_set_blend_mode(bm_add)
	repeat(7) {draw_sprite_ext(sprite_index,-1,x+subVelx,y+subVely,dir,1,image_angle,c_white,bright)}
	draw_set_blend_mode(bm_normal)

	if bright>0 {bright-=0.2}

	if hurt_counter>=1
	{ 
	    switch (sound_hurt)
	    {
	        case "sword": sound_effect=SFX_STK1; break;
	        case "buster": sound_effect=SFX_ene_hurt; break;
	        case "boss": sound_effect=snd_bosshurt; break;
	        case "not": ; break;
	    }      
	    hurt_counter=0
	}

	//// POISONED /////

	if poison>0
	{
	    poison-=0.1
	    count_poison+=0.1
	    count_dmg+=0.1
	    poison_draw+=15
	    if poison_draw>=360 {poison_draw=0}
	    alpha_poison=lengthdir_x(1,poison_draw)
	    xcenter=sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index);
	    ycenter=sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);
	    if count_poison>=1.2 {pbu=instance_create_depth(bbox_left+random(xcenter),bbox_top+random(ycenter),depth,poison_bubble); pbu.angle=random(360); count_poison=0}
	    if count_dmg>=10 {enehp-=0.5; sound_effect=sfx_swlengua; count_dmg=0}
	}
	else
	{
	    if alpha_poison!=0 {alpha_poison=lineal_move(alpha_poison,0,0.05)}
	}

	d3d_set_fog(1,c_lime,0,0)
	draw_sprite_ext(sprite_index,-1,x+subVelx,y+subVely,dir,1,image_angle,c_lime,alpha_poison/2)
	d3d_set_fog(0,c_lime,0,0)
	draw_set_blend_mode(bm_normal)


	lft=bbox_left
	tp=bbox_top

	/// MASK
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
