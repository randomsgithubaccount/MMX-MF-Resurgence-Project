init_enemy()
enehp=7
parts=spr_teranon_parts
destroy_time=5
destroy_effect=0
target=0
startx=x
starty=y
hit=bbox_bottom-(sprite_height/2)
status=0
timer=5
counter=0 
can=0
grv_speed=0
vsp=0
counter2=0
max_fire=10
bowing=0
spotx=x
spoty=y
spd=0
rot_prop=0
parp=0
counter_img=0
lenx=0
leny=0
laser=0
ls=instance_create_depth(x,y,depth,obj_lasser)
with(ls) {instance_destroy()}
expl=0
destroying=0

if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}

missil=0
total_mis=0
