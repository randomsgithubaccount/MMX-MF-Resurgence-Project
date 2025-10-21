hit=bbox_bottom-(sprite_height/2)
protect=1
sound_hurt="not"
if instance_exists(subboss_claw)
{
    if subboss_claw.status="move"
    {
    start=1
    }
    if start=1 
    {
    counter+=1
    if counter>10 {instance_create_depth(x,y,depth,subboss_magnect); counter=0}
    }
}


