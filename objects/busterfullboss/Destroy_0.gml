if sprite_index=b_L3_lvl2
{
if image_xscale=1
{
a=instance_create_depth(x+15,y,exp_busters)
if cristal=1 {a.sprite_index=spr_exp_clink}
if cristal=0 {a.sprite_index=spr_exp_ubuster}
a.image_xscale=image_xscale
a.image_speed=0.5
}
if image_xscale=-1 
{
a=instance_create_depth(x-15,y,exp_busters)
if cristal=1 {a.sprite_index=spr_exp_clink}
if cristal=0 {a.sprite_index=spr_exp_ubuster}
a.image_xscale=image_xscale
a.image_speed=0.5
}
}

