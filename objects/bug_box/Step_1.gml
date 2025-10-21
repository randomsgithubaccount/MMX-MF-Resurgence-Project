with (other) {
if dec=0
{
if fric<0 {fric+=0.05}
if fric>0 {fric-=0.05}

if vfric<0 {vfric+=0.05}
if vfric>0 {vfric-=0.05}
}
if dec>0
{dec-=0.5}

collide=collision_rectangle(bbox_left+4,bbox_top+4,bbox_right-4,bbox_bottom-4,obj_blockSolid,true,false)
if collide {enehp=0}

if x<__view_get( e__VW.XView, 0 )-164 or x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+164 or y<__view_get( e__VW.YView, 0 )-164 or y>__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+164
{
instance_destroy()
}

}
