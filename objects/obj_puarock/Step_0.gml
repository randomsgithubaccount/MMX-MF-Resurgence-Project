/// @description  PROGRAMACION
hit=y-random(sprite_height-10)

if !collision_point(x+5,y+8,parSolid,true,true) && !collision_point(x-5,y+8,parSolid,true,true) {instance_destroy()}

if image_index<3 
{
counter_smoke+=0.5; if !audio_is_playing(sfx_fire2) {sound_effect=sfx_fire2}
protect=1; protected=1; enehp=4; hurt_counter=0; effectersword=0
} else {protect=0; protected=0}


if counter_smoke>1 {instance_create_depth(x+random(16)*dir,y,depth,smokeobj); counter_smoke=0}

if alarm[0]<1 {alarm[0]=150}

if create=1 {prock1=instance_create_depth(x+32*dir,y,depth,obj_puarock); prock1.loop=1; prock1.dir=dir; create=0}
if create=2 {prock2=instance_create_depth(x+32*dir,y,depth,obj_puarock); prock2.loop=2; create=0}

/// COLISIONES

scr_hitbox_saber(0.2)

