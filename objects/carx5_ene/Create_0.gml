init_enemy()
enehp=4
parts=spr_carx5_parts
destroy_time=20
destroy_effect=1
status=0
grv_speed=0.3
pattern=0

if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}

