sprite_index=spr_zain_stand
image_index=0
hsp=0

if instance_exists(playerparent) 
{
if x>playerparent.x
{dir=-1}

if x<playerparent.x
{dir=1}
}

with(obj_damage_zain) {instance_destroy()}

