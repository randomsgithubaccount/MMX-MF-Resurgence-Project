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
nearest=instance_nearest(x,y,obj_geemel)
image_speed=1
enehp=9999
eff=0

ztrail=instance_create_depth(x,y,depth+1,obj_trailadv)
ztrail2=instance_create_depth(x,y,depth+1,obj_trailadv)
ztrail.dec_spd=0.8
ztrail2.dec_spd=0.8
ztrail.width=10
ztrail2.width=6
ztrail.c_color=c_red
ztrail2.c_color=c_red
