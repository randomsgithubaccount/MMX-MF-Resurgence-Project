if sprite_index=spr_orgabot_stand
{
    if instance_exists(playerparent)
    {
    if playerparent.x>x
    {dir=1}
    else {dir=-1}
    }
}

if sprite_index=spr_orgabot_back {sprite_index=spr_orgabot_stand}
if sprite_index=spr_orgabot_run {sprite_index=spr_orgabot_stand}
if sprite_index=spr_orgabot_close {sprite_index=spr_orgabot_stand}
if sprite_index=spr_orgabot_open {if counter<max_fire {image_index=3; counter+=0.5; fire=instance_create_depth(x,y,depth,enedmgparent_end); fire.sprite_index=sprite_index; fire.image_xscale=dir; fire.image_index=image_index} else {sprite_index=spr_orgabot_close; image_index=0; counter=0}}

