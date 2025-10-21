//scr_car_motion()
scr_motion_mov()

image_speed=abs(hsp/12)

if place_meeting(x,y-2,playerparent)
{start=true}

if start=true {hsp=lerp(hsp,4*dir,0.1)}
if moving=0 {hp=0}

maxspd=abs(hsp)

if hsp>0 {image_xscale=1} else {image_xscale=-1}

if place_meeting(x,y-2,playerparent)
{
shake=10
}

if hp<=0 
{
destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
destroy_spr.sprite_index=sprite_index
destroy_spr.image_index=image_index
destroy_spr.destroy_time=destroy_time
destroy_spr.parts=parts
destroy_spr.destroy_time=destroy_time
destroy_spr.destroy_effect=destroy_effect
instance_destroy()
instance_create_depth(x+30,y,depth,SupraExp)
instance_create_depth(x-30,y,depth,SupraExp)
instance_create_depth(x,y-30,depth,SupraExp)
}

if x<__view_get( e__VW.XView, 0 )-164 or x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+164 or y<__view_get( e__VW.YView, 0 )-164 or y>__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+164
{
instance_destroy()
}

