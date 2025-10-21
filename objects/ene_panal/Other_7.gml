if sprite_index=spr_panal_clos {sprite_index=spr_panal; image_index=0; xx=x+random_range(-20,20); yy=y+random_range(-20,20)}

if sprite_index=spr_panal_op 
{
a=instance_create_depth(x+12,y+11,depth,ene_bee)
b=instance_create_depth(x+12,y+11,depth,ene_bee)
sprite_index=spr_panal_clos; image_index=0
}

