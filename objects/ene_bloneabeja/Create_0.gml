init_enemy()
enehp=0.4
attack_counter=0
hurt_counter=0
movetowards=1
parts=spr_bloneabeja_parts
destroy_time=5
destroy_effect=0
target=0
startx=x
starty=y
image_speed=0.4

if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}

