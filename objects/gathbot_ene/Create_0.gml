init_enemy()
enehp=2
parts=s_policene_p
destroy_time=5
destroy_effect=0
image_speed=0.3
status=0
timer=5
counter=0 
can=0
bright=1
grv_speed=0.3
shot=0

if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}

