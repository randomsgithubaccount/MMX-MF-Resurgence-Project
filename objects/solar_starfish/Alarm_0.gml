sprite_index=spr_solar_atk1
image_index=0

if instance_exists(playerparent) 
{
if x>playerparent.x
{dir=-1}

if x<playerparent.x
{dir=1}
}

