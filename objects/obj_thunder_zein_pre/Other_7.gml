instance_create_depth(x,y,depth,obj_thunder_zein)

if x>__view_get( e__VW.XView, 0 )+32 && x<__view_get( e__VW.XView, 0 )+352-32
{
if dir=1 {ray=instance_create_depth(x+80,y,depth,obj_thunder_zein_pre); ray.dir=1}
else if dir=-1 {ray=instance_create_depth(x-80,y,depth,obj_thunder_zein_pre); ray.dir=-1}
}

instance_destroy()

