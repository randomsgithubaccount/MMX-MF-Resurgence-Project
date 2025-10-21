if dec=0
{
if fric<0 {fric+=0.05}
if fric>0 {fric-=0.05}

if vfric<0 {vfric+=0.05}
if vfric>0 {vfric-=0.05}
}
if dec>0
{dec-=0.5}

if enehp<=0
{
destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
destroy_spr.sprite_index=sprite_index
destroy_spr.image_index=image_index
destroy_spr.destroy_time=destroy_time
destroy_spr.parts=parts
destroy_spr.destroy_time=destroy_time
destroy_spr.destroy_effect=destroy_effect
instance_destroy()
}

