hit=y-sprite_height/2

if enehp<3 && (sprite_index=spr_gtotem_body or sprite_index=spr_gtotem_bodys)
{
    destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
    destroy_spr.sprite_index=sprite_index
    destroy_spr.image_xscale=dir
    destroy_spr.image_index=image_index
    destroy_spr.destroy_time=destroy_time
    destroy_spr.parts=parts
    destroy_spr.destroy_time=destroy_time
    destroy_spr.destroy_effect=destroy_effect
    image_speed=0
    sprite_index=spr_gtotem_bodyd
    image_index=random(image_number)
    enehp=99
}

if alarm[0]<1 {alarm[0]=choose(100,120,140,160)}

if sprite_index=spr_gtotem_bodyd
{
protected=1
protect=1
enehp=99
}

