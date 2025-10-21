/// @description sprites
scr_motion()

if sprite_index=spr_mantis_st {image_speed=0.1}
if sprite_index=spr_mantis_mount {image_speed=0.2}

if global.char=0 && sprite_index=spr_mantis_mount
{charride=spr_mount_bikexu}

if global.char=1 && sprite_index=spr_mantis_mount
{charride=spr_mount_bikexu}

if global.char=2 && sprite_index=spr_mantis_mount
{charride=spr_mount_bikexu}

if instance_exists(ride_mantis)
{}
else
{
if instance_exists(playerparent) && can=1
{
if sprite_index=spr_mantis_st
{
if playerparent.x>=x-14 and playerparent.x<=x+areax and playerparent.y>=y-56 and playerparent.y<=y+areay 
{
if global.char=0 {with (MegamanX) {instance_destroy()}}
if global.char=1 {with (Zero) {instance_destroy()}}
if global.char=2 {with (Axl) {instance_destroy()}}

sprite_index=spr_mantis_mount; image_index=0}
}
}
}

