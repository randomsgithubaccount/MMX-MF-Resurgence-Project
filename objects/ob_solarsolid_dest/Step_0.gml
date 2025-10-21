if status=1 
{
if instance_exists(solar_starfish)
{x=lerp(x,solar_starfish.x,0.1); y=lerp(y,solar_starfish.y-16,0.1)}
image_xscale-=0.1
image_yscale-=0.1
}

if status=2
{
if instance_exists(solar_starfish_clone)
{x=lerp(x,solar_starfish_clone.x,0.1); y=lerp(y,solar_starfish_clone.y-16,0.1)}
image_xscale-=0.1
image_yscale-=0.1
}

if image_yscale<=0 {instance_destroy()}

