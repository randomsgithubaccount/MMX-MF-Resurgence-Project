if instance_exists(playerparent)
{
if playerparent.dir=1
{
x=playerparent.x
y=playerparent.y-16
}
if playerparent.dir=-1
{
x=playerparent.x
y=playerparent.y-16
}
image_xscale=playerparent.dir
}

scr_hitbox_normal(0.4,0.4)

