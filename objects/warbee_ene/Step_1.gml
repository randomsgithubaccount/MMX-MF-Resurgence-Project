if dec=0
{
if fric<0 {fric+=0.05}
if fric>0 {fric-=0.05}

if vfric<0 {vfric+=0.05}
if vfric>0 {vfric-=0.05}
}
if dec>0
{dec-=0.5}

if enehp<=1
{
destroying=1
grv_speed=0.02
hsp=lineal_move(hsp,1*dir,0.1)
}

collide=collision_rectangle(bbox_left+4,bbox_top+4,bbox_right-4,bbox_bottom-4,obj_blockSolid,true,false)
if collide {enehp=0}

if destroying=1
{
protect=1
hurt_counter=0
    if !place_meeting(x,y+4,parSolid) 
    {
    enehp=1
    xcenter=sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index);
    ycenter=sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);
    expl+=0.1
    if expl>=1 {instance_create_depth(bbox_left+random(xcenter),bbox_top+random(ycenter),expob2); expl=0}
    }
else {enehp=0}
}

if enehp<=0
{
xcenter=sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index);
ycenter=sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);
instance_create_depth(bbox_left+random(xcenter),bbox_top+random(ycenter),depth,expsuper3)
instance_create_depth(bbox_left+random(xcenter),bbox_top+random(ycenter),depth,expsuper3)
instance_create_depth(bbox_left+random(xcenter),bbox_top+random(ycenter),depth,expsuper3)
destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
destroy_spr.sprite_index=sprite_index
destroy_spr.image_xscale=dir
destroy_spr.image_index=image_index
destroy_spr.destroy_time=destroy_time
destroy_spr.parts=parts
destroy_spr.destroy_time=destroy_time
destroy_spr.destroy_effect=destroy_effect
//sound_effect=SFX_IMPLOSION
instance_destroy()
}

if x<__view_get( e__VW.XView, 0 )-164 or x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+164 or y<__view_get( e__VW.YView, 0 )-164 or y>__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+164
{
instance_destroy()
}

