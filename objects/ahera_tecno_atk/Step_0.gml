if !instance_exists(ahera_sorceress) {instance_destroy()}

if instance_exists(ahera_sorceress)
{
scr_motion()

mask_index=sprite_index
if sprite_index=spr_tecno_vile_jump && moved=1
{a=instance_create_depth(x+10*image_xscale,y-10,depth,ahera_attack); a.hspeed=random_range(-2,2)*image_xscale; a.vspeed=2; if vsp>2 {instance_destroy()}}
if sprite_index=spr_tecno_penguin_at && moved=1 && image_index>1
{a=instance_create_depth(x+25*image_xscale,y-18,depth,ahera_attack); a.hspeed=2*image_xscale}

if sprite_index=spr_tecno_doppler_dash && moved=1
{
if out=0 && image_index>11 {image_index=9}
if image_index>7
{
hsp=6*image_xscale; 
if place_meeting(x+hsp,y,parSolid) {out=1; image_speed=0.3}
if place_meeting(x,y,playerparent) {out=1; image_speed=0.3; if instance_exists(playerparent) {if playerparent.resentido=0 {playerparent.vsp=-10}}}
}
}
if sprite_index=spr_tecno_doppler_grv && moved=1
{
gi=instance_create_depth(__view_get( e__VW.XView, 0 )+random(352),__view_get( e__VW.YView, 0 )+random_range(50,240),depth,ahera_gib)
gi.hspeed=0
gi.vspeed=random_range(-5,-1)
if instance_exists(playerparent) {playerparent.grv_speed=playerparent.grv_speed/3}
if instance_exists(ahera_block) {ahera_block.vsp=-1; ahera_block.grv_speed=0}
vsp=0
grv_speed=0
}

if sprite_index=spr_tecno_doppler {vsp=0; grv_speed=0}

if sprite_index=spr_tecno_eagle 
{
grv_speed=0
if instance_exists(ahera_block) {ahera_block.hsp=1*image_xscale}
if instance_exists(playerparent) && instance_exists(ahera_sorceress) 
{
playerparent.fric=2*image_xscale}; 
a=instance_create_depth(ahera_sorceress.left+(random(320)),ahera_sorceress.bottom,depth,smokeobj)
b=instance_create_depth(ahera_sorceress.left+(random(320)),ahera_sorceress.top+random(224),depth,ob_air_gib)
a.hspeed=3*image_xscale
b.hspeed=choose(3,4,5)*image_xscale
}


if sprite_index=spr_tecno_magma_hado && image_index>2 && created=0
{
a=instance_create_depth(x+25*image_xscale,y-25,depth,obj_tecno_hado); a.hspeed=6*image_xscale; 
b=instance_create_depth(x+21*image_xscale,y-30,depth,obj_tecno_hado); b.hspeed=6*image_xscale; 
c=instance_create_depth(x+21*image_xscale,y-20,depth,obj_tecno_hado); c.hspeed=6*image_xscale; 
created=1
}

if sprite_index=spr_tecno_armadillo_r
{
grv_speed=0
if place_meeting(x,y+abs(vsp),parSolid) {vsp=-4}
if place_meeting(x,y-abs(vsp),parSolid) {vsp=4}
if place_meeting(x+abs(hsp),y,parSolid) {hsp=-4}
if place_meeting(x-abs(hsp),y,parSolid) {hsp=4}
}

counter_gib+=0.4

if counter_gib>=1 
{
instance_create_depth(x,y-20,depth,ahera_gib)
a=instance_create_depth(x,y,depth,ahera_shadow)
a.sprite_index=sprite_index
a.image_index=image_index
a.target=ahera_tecno_atk
a.image_xscale=image_xscale
a.image_alpha=0.5
a.spd=0.2
counter_gib=0
}
}
else {instance_destroy()}

