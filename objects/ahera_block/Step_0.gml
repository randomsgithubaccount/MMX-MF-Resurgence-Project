/// @description  FISICAS
scr_motion_mov()
hit=y-10

if place_meeting(bbox_left-4,y,parSolid) && place_meeting(x,bbox_top-4,obj_blockSolid) && can=0 {direc=1; shake=10; can=1}
else if place_meeting(bbox_left-4,y,parSolid) && place_meeting(x,bbox_bottom+4,obj_blockSolid) && can=0 {direc=2; shake=10; can=1}
else if place_meeting(bbox_right+4,y,parSolid) && place_meeting(x,bbox_bottom+4,obj_blockSolid) && can=0 {direc=3; shake=10; can=1}
else if place_meeting(bbox_right+4,y,parSolid) && place_meeting(x,bbox_top-4,obj_blockSolid) && can=0 {direc=4; shake=10; can=1}

if place_meeting(x,y,playerparent) 
{
enehp-=100
with(playerparent) {damage=1; scr_damage(); global.canmove=0; vsp=-3}
}

if can=1 {alarm[0]=30; can=2}

if direc=0 && sprite_index=spr_ahera_box {hsp=-4; vsp=-4}

if can=3 or can=0
{
if direc=1 {vsp=4}
if direc=2 {hsp=4}
if direc=3 {vsp=-4}
if direc=4 {hsp=-4}
}

if can=3 {can=0}

if sprite_index=spr_ahera_boxapp {vsp=0; grv_speed=0}

if place_meeting(x,y+1,playerparent) && vsp>0
{
enehp-=100
with(playerparent) {damage=1; scr_damage(); global.canmove=0; vsp=-3}
}

if place_meeting(x,y+4,ahera_tecno_atk) or place_meeting(x,y-4,ahera_tecno_atk) or place_meeting(x+4,y,ahera_tecno_atk) or place_meeting(x-4,y,ahera_tecno_atk)
{
if ahera_tecno_atk.sprite_index=spr_tecno_armadillo_r {enehp-=100}
}

if place_meeting(x,y,ahera_shadow_atk) {enehp-=100}

if enehp<=0
{
destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
destroy_spr.sprite_index=sprite_index
destroy_spr.image_index=image_index
destroy_spr.destroy_time=destroy_time
destroy_spr.parts=parts
destroy_spr.destroy_time=destroy_time
destroy_spr.destroy_effect=destroy_effect
sound_effect=sfx_crystal
instance_destroy()
}

