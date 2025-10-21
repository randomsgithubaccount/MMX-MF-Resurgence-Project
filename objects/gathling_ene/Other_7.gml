if sprite_index=s_gathlingS && shots<1
{
sht=instance_create_depth(x+22*dir,y-16,depth,gathling_shot)
sht.hspeed=4*dir
shots+=0.2
}

if sprite_index=s_gathlingS && shots>=1
{
sprite_index=s_gathling
alarm[0]=100
}

