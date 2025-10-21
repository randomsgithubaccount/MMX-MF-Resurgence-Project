if sprite_index=spr_elec_enel {sprite_index=spr_elec_ene; image_index=0}

if sprite_index=spr_elec_ene
{
if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}
}

if sprite_index=spr_elecn_ene
{
if can=0 {sprite_index=spr_elec_enel; image_index=0}
if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}
counter+=1
if counter>=4 {can=0; counter=0}
}

