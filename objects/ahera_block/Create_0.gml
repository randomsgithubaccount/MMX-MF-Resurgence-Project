
if place_meeting(x,y,parSolid) 
{
i=1
repeat(100) 
{
if !place_meeting(x+i,y,parSolid) {x+=i+1; break;}
if !place_meeting(x-i,y,parSolid) {x-=i+1; break;}
i+=1
}
}
init_enemy()

direc=0
hit=y-10
sprite_index=spr_ahera_boxapp
effectersword=0
sound_hurt="sword"
enehp=6
attack_counter=0
hurt_counter=0
movetowards=1
dir=1
protected=0
free=true
parts=spr_ahera_block_debris
destroy_time=5
destroy_effect=0
target=0
startx=x
starty=y
go=0
image_speed=0.3
delta_x=0
box_frict=0
dmg=0
protect=0
free=true
max_slp=2
grv_speed=0
moving=0
can=0
vsp=0
hsp=0
fric=0
vfric=0
newX=0
newY=0
subVelx = 0
subVely = 0
vel_x = 0
vel_y = 0
hacked=0
counter_hacked=0
effectersword=0
sound_hurt="sword"

