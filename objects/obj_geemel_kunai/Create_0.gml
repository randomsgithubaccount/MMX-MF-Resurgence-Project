/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
init_enemy()

hurt_counter=0
items=0
protected=1
free=true
dmgcaused=0
sound_hurt="sword"
effectersword=0
parts=s_batparts
destroy_effect=0
destroy_time=0
protect=1
hacked=0
counter_hacked=0

back=0
spd=0
image_speed=0
enehp=9999
eff=0
load=0

if direction=0 {image_index=4}
if direction=180 {image_index=0}
if direction=225 {image_index=1}
if direction=315 {image_index=3}
if direction=270 {image_index=2}

ztrail=instance_create_depth(x,y,depth,obj_trailadv)
ztrail2=instance_create_depth(x,y,depth,obj_trailadv)
ztrail.dec_spd=0.8
ztrail2.dec_spd=0.8
ztrail.width=8
ztrail2.width=5
ztrail.c_color=c_red
ztrail2.c_color=c_red
sound_effect=sfx_geemel_kunai
