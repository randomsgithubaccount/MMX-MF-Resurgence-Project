if place_meeting(x,y,obj_minecar)
{
    enehp-=99
    hurt_counter+=0.3
    sound_hurt="sword"
}

if enehp<=0
{
destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
destroy_spr.sprite_index=sprite_index
destroy_spr.image_xscale=dir
destroy_spr.image_index=image_index
destroy_spr.destroy_time=destroy_time
destroy_spr.parts=parts
destroy_spr.destroy_time=destroy_time
destroy_spr.destroy_effect=destroy_effect
instance_destroy()
}

