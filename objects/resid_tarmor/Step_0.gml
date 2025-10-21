if instance_exists(playerparent)
{
if playerparent.dir=1
{
x=playerparent.x+10
y=playerparent.y-16
}
if playerparent.dir=-1
{
x=playerparent.x-10
y=playerparent.y-16
}
image_xscale=playerparent.dir
}

scr_hitbox_normal(0.2,0.2)

