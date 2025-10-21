scr_motion()

///sprites
if sprite_index=s_ridespr {image_speed=0.2}
if sprite_index=s_ridemount {image_speed=0.2}

if global.char=0 && sprite_index=s_ridemount
{charride=s_mmx_ridemount}

if global.char=1 && sprite_index=s_ridemount
{charride=s_z_ridemount}

if global.char=2 && sprite_index=s_ridemount
{charride=s_axl_ridemount}

if instance_exists(playerparent) && can=1
{
if sprite_index=s_ridespr 
{
if playerparent.x+9>=x-34 and playerparent.x+9<=x+areax and playerparent.y>=y-36 and playerparent.y<=y+areay 
{
if global.char=0 {with (MegamanX) {instance_destroy()}}
if global.char=1 {with (Zero) {instance_destroy()}}
if global.char=2 {with (Axl) {instance_destroy()}}

sprite_index=s_ridemount; image_index=0}
}
}

