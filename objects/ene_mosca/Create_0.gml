init_enemy()
enehp=1
movetowards=1
parts=s_mosca_parts
destroy_time=5
destroy_effect=0
target=0
startx=x
starty=y

if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}

