if sprite_index=spr_launchelec_mis
{vspeed+=0.3}

if place_meeting(x,bbox_top-abs(vspeed)-1,parSolid) 
{
    if vspeed<0 
    {
    vspeed=0
        if hspeed>0
        {hspeed+=1}
        if hspeed<0
        {hspeed-=1}
    }
}

if collision_point(x,bbox_bottom+1,parSolid,true,true) 
{
if sprite_index=spr_launchelec_mis
{hspeed=0; vspeed=0; sprite_index=spr_launchelec_misd; image_index=0}
}

