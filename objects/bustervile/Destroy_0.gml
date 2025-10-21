if sprite_index=spr_vileproj
{
	if image_xscale=1
	{
	a=instance_create_depth(x,y,depth,exp_busters)
	if cristal=1 {a.sprite_index=spr_exp_clink; x+=15}
	if cristal=0 {a.sprite_index=spr_xv_col}
	a.image_xscale=image_xscale
	a.image_speed=0.5
	}
	if image_xscale=-1 
	{
	a=instance_create_depth(x,y,depth,exp_busters)
	if cristal=1 {a.sprite_index=spr_exp_clink; x-=15}
	if cristal=0 {a.sprite_index=spr_xv_col}
	a.image_xscale=image_xscale
	a.image_speed=0.5
	}
}

