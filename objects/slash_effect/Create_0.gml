sprite_index=spr_slashgib
image_xscale=choose(1,-1)
image_yscale=choose(1,-1)
image_speed=0.4
scale=0
if image_xscale=0 {image_xscale=1}
if image_yscale=0 {image_yscale=1}

if instance_exists(Zero)
{
if Zero.dir=1 
{
if Zero.sprite_index=Zero.zslash1 {image_angle=90}
else if Zero.sprite_index=Zero.zslash2 {image_angle=135}
else if Zero.sprite_index=Zero.zslash3 {image_angle=45}
else if Zero.sprite_index=Zero.zslashair {image_angle=135}
else if Zero.sprite_index=Zero.zslashair2 {image_angle=35}
else if Zero.sprite_index=Zero.zslashup {image_angle=90}
else if Zero.sprite_index=Zero.zslashright {image_angle=0}
else if Zero.sprite_index=Zero.zslashwall {image_angle=90}
else if Zero.sprite_index=Zero.zslashfull {image_angle=135}
else if Zero.sprite_index=Zero.zslashfull2 {image_angle=0}
}
if Zero.dir=-1 
{
if Zero.sprite_index=Zero.zslash1 {image_angle=90-180}
else if Zero.sprite_index=Zero.zslash2 {image_angle=135-180}
else if Zero.sprite_index=Zero.zslash3 {image_angle=45-180}
else if Zero.sprite_index=Zero.zslashair {image_angle=135-180}
else if Zero.sprite_index=Zero.zslashair2 {image_angle=35-180}
else if Zero.sprite_index=Zero.zslashup {image_angle=90-180}
else if Zero.sprite_index=Zero.zslashright {image_angle=0-180}
else if Zero.sprite_index=Zero.zslashwall {image_angle=90-180}
else if Zero.sprite_index=Zero.zslashfull {image_angle=135-180}
else if Zero.sprite_index=Zero.zslashfull2 {image_angle=0-180}
}
}

