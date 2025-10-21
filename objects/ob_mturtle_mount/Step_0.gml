scr_motion()

///sprites
if sprite_index=spr_rideturtle_st {image_speed=0.1}
if sprite_index=spr_rideturtle_mount {image_speed=0.2}

if global.char=0 && sprite_index=spr_rideturtle_mount
{charride=s_mmx_ridestand}

if global.char=1 && sprite_index=spr_rideturtle_mount
{charride=s_z_ridestand}

if global.char=2 && sprite_index=spr_rideturtle_mount
{charride=s_axl_ridestand}

if instance_exists(ride_turtle)
{}
else
{
if instance_exists(playerparent) && can=1
{
if sprite_index=spr_rideturtle_st
{
if playerparent.x>=x-14 and playerparent.x<=x+areax and playerparent.y>=y-56 and playerparent.y<=y+areay 
{
if global.char=0 {with (MegamanX) {instance_destroy()}}
if global.char=1 {with (Zero) {instance_destroy()}}
if global.char=2 {with (Axl) {instance_destroy()}}

sprite_index=spr_rideturtle_mount; image_index=0}
}
}
}

