if sprite_index=spr_enenube_at 
{
if count>3
{
sprite_index=spr_enenube
image_index=0
der=choose(1,-1)
count=0
}
count+=1
}

if sprite_index=spr_enenube
{
if count>3
{
der=choose(1,-1)
hsp=0.5*der
count=0
}
count+=1
}


