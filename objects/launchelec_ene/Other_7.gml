if sprite_index=spr_launchelec_at
{sprite_index=spr_launchelec; image_index=0; sound_effect=sfx_misthd; counter=0}


if sprite_index=spr_launchelec
{
    if instance_exists(playerparent)
    {
    if playerparent.x>x
    {dir=1}
    else {dir=-1}
    }
counter+=1
if counter>=2 {can=0; counter=0}
}

