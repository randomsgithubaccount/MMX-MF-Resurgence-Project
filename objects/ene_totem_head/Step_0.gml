hit=y-sprite_height/2
scr_ene_motion()
indexer+=0.3
i=1

if base_created=0
{
    repeat(totems)
    {
        with(tot[i])
        {
            if place_meeting(x,y+2,obj_blockSolid) 
            {
            other.tot[other.totems]=instance_create_depth(x,y-16,depth,ene_totem_base); base=1; instance_destroy()
            other.base_created=1
            }
        }
    i++
    }
}

if fly=0
{
    if totaltotems<=0
    {
    fly=1
    protect=0; protected=0
    }
    else {protect=1; protected=1}
}

if fly=1 
{
protect=0; protected=0

if instance_exists(playerparent)
{
    if x>playerparent.x {hsp-=0.05}
    if x<playerparent.x {hsp+=0.05}
    if y>playerparent.y-16 {vsp-=0.05}
    if y<playerparent.y-16 {vsp+=0.05}
}

vsp=max(vsp,-1)
vsp=min(vsp,1)
hsp=max(hsp,-1)
hsp=min(hsp,1)
}

