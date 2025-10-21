
if sprite_index=spr_zain_atkair
{snd=0; image_index=7; with(obj_damage_zain) {instance_destroy()}}

if sprite_index=spr_zain_atk
{snd=0; sprite_index=spr_zain_stand; image_index=0; with(obj_damage_zain) {instance_destroy()}}

if sprite_index=spr_zain_clav2
{sprite_index=spr_zain_stand; image_index=0}

if sprite_index=spr_zain_clav
{

sprite_index=spr_zain_clav2; image_index=0

ray=instance_create_depth(x+64,y,depth,obj_thunder_zein_pre); ray.dir=1

ray2=instance_create_depth(x-64,y,depth,obj_thunder_zein_pre); ray2.dir=-1
}

if sprite_index=spr_zain_intro
{sprite_index=spr_zain_stand; image_index=0; global.canmove=1}

if sprite_index=spr_zain_roll
{sprite_index=spr_zain_rolls; sound_effect=sfx_rana}

if sprite_index=spr_zain_rolls
{sound_effect=sfx_rana}


