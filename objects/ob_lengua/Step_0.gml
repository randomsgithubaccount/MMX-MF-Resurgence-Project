if target=1 
{
direction = point_direction(x, y, startx, starty)
speed=6
    if bind=1
    {if place_meeting(x,y,bossparent) && bossparent.sprite_index=spr_swampXtreme_pre {if bind=1 {if instance_exists(playerparent){playerparent.visible=false}}; image_alpha=0; bossparent.sprite_index=spr_swampXtreme_pick; bossparent.image_index=0; target=2; speed=0}}
   // if bind=0 && mav2.lengua<=2
   // {if place_meeting(x,y,bossparent) && bossparent.sprite_index=spr_swampXtreme_pre {bossparent.sprite_index=spr_swampXtreme_pre; bossparent.image_index=0; speed=0; instance_destroy()}}
    //if bind=0 && mav2.lengua>2
    //{if place_meeting(x,y,bossparent) && bossparent.sprite_index=spr_swampXtreme_pre {speed=0; instance_destroy()}}
}

if target=0 {instance_create_depth(x,y,depth,ob_lengua_str)}

if instance_exists(playerparent)
{   
    if place_meeting(x,y,playerparent) {bind=1}
    if bind=1 {target=1; playerparent.x=x-9; playerparent.y=y-20; if playerparent.visible=true {playerparent.sprite_index=playerparent.zhurt}}
}

if target=2 {x=bossparent.x; y=bossparent.y-20}

