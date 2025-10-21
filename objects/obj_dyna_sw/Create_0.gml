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
image_speed=0.6
enehp=9999
eff=0

speed=4
if instance_exists(playerparent)
{direction=point_direction(x,y,playerparent.x,playerparent.y-16)}
dest=0