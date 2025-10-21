hit=y-sprite_height/2

if enehp<3 && sprite_index=spr_gtotem_base
{
    destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
    destroy_spr.sprite_index=sprite_index
    destroy_spr.image_xscale=dir
    destroy_spr.image_index=image_index
    destroy_spr.destroy_time=destroy_time
    destroy_spr.parts=parts
    destroy_spr.destroy_time=destroy_time
    destroy_spr.destroy_effect=destroy_effect
    sprite_index=spr_gtotem_based
    image_speed=0
    image_index=random(image_number)
    enehp=99
}

if sprite_index=spr_gtotem_based
{
protected=1
protect=1
enehp=99
}

