image_alpha-=spd
image_speed=0
if image_alpha<=0 {instance_destroy()}


if instance_exists(target)
{
sprite_index=target.sprite_index
image_index=target.image_index
}

