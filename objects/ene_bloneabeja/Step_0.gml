hit=y-(sprite_height/2)

if instance_exists(playerparent)
{
    if distance_to_object(playerparent)<100 && sprite_index=spr_bloneabeja_stand
    {
    sprite_index=spr_bloneabeja_fly
    if playerparent.x>x {dir=1} else {dir=-1}
    }
    
    if sprite_index=spr_bloneabeja_fly
    {
    vspeed=-1
        if collision_line(x,y,x-200,y+200,playerparent,false,false) or collision_line(x,y,x+200,y+200,playerparent,false,false)
        {
        sprite_index=spr_bloneabeja_atk
        if playerparent.x>x {dir=1} else {dir=-1}
        image_index=0
        }
    }
}
if sprite_index=spr_bloneabeja_atk
{
hspeed=3*dir
vspeed=3
if place_meeting(x,y,parSolid) or place_meeting(x,y,playerparent)
{enehp=0}
}


