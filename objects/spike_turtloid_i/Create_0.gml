entrance=2
mirror=1
rebote=0

spl2=instance_create_depth(x,y,depth,waterstand)
with (spl2) {instance_destroy()}
inwater=0

init_enemy()
grv_speed=0
direc=1