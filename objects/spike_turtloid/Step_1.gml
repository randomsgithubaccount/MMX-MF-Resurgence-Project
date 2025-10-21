if bbox_bottom>parWater.bbox_top && inwater=0 {spl=instance_create_depth(x+9,y,depth,watersplash); sound_effect=SFX_waterspl; inwater=1}
if bbox_bottom<parWater.bbox_top && inwater=1 {spl=instance_create_depth(x+9,y,depth,watersplash); sound_effect=SFX_waterspl; inwater=0}

if instance_exists(spl2) {spl2.x=x+9}
else
{
if y+32>=parWater.y and y+32<=parWater.y+parWater.areay 
{spl2=instance_create_depth(x,y,depth,waterstand); spl2.x=x}
}

if inwater=1 {grv_speed = 0.2} else {grv_speed = 0.3}

vel[0]=hsp
vel[1]=vsp

