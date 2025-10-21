init_enemy()
enehp=4
parts=spr_elecgun_parts
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
grv_speed=0.2
counter2=0
max_fire=10

if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}

