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
image_speed=1
enehp=9999
eff=0

out=0
dir=-1
on=0

counter=0
sep=0

if obj_highmax.xtreme=1 && sprite_index=spr_highshield {sprite_index=spr_highshield2}
