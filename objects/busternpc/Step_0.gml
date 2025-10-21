spr_buster_destroy=spr_xb_col

if hspeed>0 {image_xscale=1}
if hspeed<0 {image_xscale=-1}

if sprite_index=spr_buster
{
if image_xscale=1 {hspeed=7}
if image_xscale=-1 {hspeed=-7}
}
else {hspeed=0}

scr_hitbox_buster(0.5)

