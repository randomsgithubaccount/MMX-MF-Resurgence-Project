hit=y-10

if distance_to_object(playerparent)<170
{ 
    if sprite_index=spr_baz_ene && status=0 
    {
    sprite_index=spr_baz_shot; image_index=0
    at=instance_create_depth(x+20*dir,y-24,depth,objmisilmch); at.dir=dir; at.vspeed=-1
    at2=instance_create_depth(x+20*dir,y-24,depth,objmisilmch); at2.dir=dir; at2.vspeed=1
    status=1
    }
}

if alarm[0]<1 {alarm[0]=200}

if sprite_index=spr_baz_ene {image_speed=0.1}
if sprite_index=spr_baz_shot {image_speed=0.2}

