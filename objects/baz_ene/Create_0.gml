init_enemy()
enehp=3
parts=spr_baz_parts
destroy_time=5
destroy_effect=0
status=0
grv_speed=0.3
pattern=0

if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}

