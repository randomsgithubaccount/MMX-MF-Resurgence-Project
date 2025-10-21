angle+=5

hspeed=lerp(hspeed,0,0.06)
vspeed=lerp(vspeed,0,0.06)

if instance_exists(blade) 
{
blade.x=x
blade.y=y
    if hspeed=0
    {
    image_xscale-=0.1
    image_yscale-=0.1
    blade.image_xscale-=0.1
    blade.image_yscale-=0.1
    }
    if image_xscale<=0 {with(blade) {instance_destroy()}; instance_destroy()}
}
else {instance_destroy()}

