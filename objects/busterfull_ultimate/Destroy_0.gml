
if explo=1
{
    a=instance_create_depth(x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),depth,exp_busters)
    if cristal=1 {a.sprite_index=spr_exp_clink}
    if cristal=0 {a.sprite_index=spr_exp_ubuster}
    a.image_angle=image_angle
    a.image_speed=0.5
}

ds_list_destroy(target_damaged);
