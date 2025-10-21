scr_motion()
if instance_exists(ride_bike)
{}
else
{
    if instance_exists(playerparent) && can=1
    {
        if playerparent.x>=x-14 and playerparent.x<=x+areax and playerparent.y>=y-56 and playerparent.y<=y+areay 
        {
        if global.char=0 {with (MegamanX) {instance_destroy()}}
        if global.char=1 {with (Zero) {instance_destroy()}}
        if global.char=2 {with (Axl) {instance_destroy()}}
        instance_create_depth(x,y,depth,ride_bike) 
        instance_destroy()
        }
    }
}

image_speed=0

if instance_exists(Zero)
{image_index=1}
if instance_exists(MegamanX)
{image_index=0}
if instance_exists(Axl)
{image_index=2}


