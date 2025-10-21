if sprite_index=spr_grob_stand
{
    if instance_exists(playerparent)
    {
    if playerparent.x>x
    {dir=1}
    else {dir=-1}
    }
counter+=1
if counter>=5 {can=0; counter=0}
}

if sprite_index=spr_grob_atk
{
    spear=instance_create_depth(x,y-sprite_height/2,depth,grob_spear)
    spear.dir=dir
    sprite_index=spr_grob_stand
    image_index=0
}

if sprite_index=spr_grob_laugh
{
    counter+=1
    if counter>=5 {can=0; counter=0; sprite_index=spr_grob_stand; image_index=0}
}

