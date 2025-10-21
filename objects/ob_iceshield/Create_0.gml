damaged=0
counter_clink=0
image_index=0
//sound_effect=SFX_CRISTALIZED
if instance_exists(Zero)
{
    if Zero.sprite_index=Zero.zice
    {
    x=Zero.x
    y=Zero.y
    image_speed=Zero.image_speed
    image_xscale=Zero.dir
    }
    else {instance_destroy()}
}

