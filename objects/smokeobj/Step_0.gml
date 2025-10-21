if direction=0 {vspeed=-0.5}

if instance_exists(parWater)
{
if bbox_top>parWater.bbox_bottom {instance_destroy()}
}


