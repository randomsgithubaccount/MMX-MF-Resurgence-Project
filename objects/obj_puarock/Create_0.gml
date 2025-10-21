dir=1
damaged=0
counter_clink=0
image_speed=0.5
image_index=0
created=0
counter_smoke=0
create=0

hit=y
effectersword=0
sound_hurt="sword"
enehp=4
attack_counter=0
hurt_counter=0
movetowards=1
dir=1
free=true
parts=spr_debris2
destroy_time=5
destroy_effect=2
target=0
startx=x
starty=y
go=0
delta_x=0
box_frict=0
protect=0
protected=0
hsp=0
vsp=0
vfric=0
fric=0
max_slp=2
moving=0
bright=0


subVelx = 0
subVely = 0
vel[0] = 0
vel[1] = 0
hsp=0
vsp=0
vfric=0
fric=0
free=true
grv_speed=0

i=0
repeat(6)
{
part[i]=instance_create_depth(bbox_left+random(sprite_width/2),bbox_top+random(sprite_height/2),depth,parent_parts2)
part[i].vspeed=random_range(-2,-4)
part[i].sprite_index=spr_debris2
part[i].image_index=i
i+=1
}
loop=0

z=1
repeat(240)
{
if !collision_point(x,y+z,parSolid,true,true) {z+=1} else {y+=z; break;}
if collision_point(x,bbox_bottom-z,parSolid,true,true) {z+=1} else {y-=z; break;}
}


