/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
dir=choose(-1,1)
out=0
image_xscale=0
image_yscale=0
go=0
spd=0
trans=0
ang=0
rebot=0
ef=0

ztrail=instance_create_depth(x,y,depth+1,obj_trailadv)
ztrail2=instance_create_depth(x,y,depth+1,obj_trailadv)
ztrail.dec_spd=0.8
ztrail2.dec_spd=0.8
ztrail.width=18
ztrail2.width=14
ztrail.c_color=c_red
ztrail2.c_color=c_red
max_rebots=choose(11,10,9,8)