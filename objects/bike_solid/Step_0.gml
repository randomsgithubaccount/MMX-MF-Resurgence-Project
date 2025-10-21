/// @description  FISICAS
scr_motion()
frames+=0.4
if frames>20 {frames=0}
image_speed=0

if instance_exists(Zero)
{image_index=1}
if instance_exists(MegamanX)
{image_index=0}
if instance_exists(Axl)
{image_index=2}

hsp=lerp(hsp,8*dir,0.1)

if moving=0
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

