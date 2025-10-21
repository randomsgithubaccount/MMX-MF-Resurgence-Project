if (sprite_index=spr_elecgun_enet or sprite_index=spr_elecgun_enetu) && (status=1 or status=2)
{image_index=1; counter+=1; sound_effect=sfx_misthd}

if (sprite_index=spr_elecgun_enet or sprite_index=spr_elecgun_enetu) && status>=3
{image_index=3; counter+=1}

if sprite_index=spr_elecgun_ene
{
if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}
counter+=1
if counter>=2 {can=0}
}

