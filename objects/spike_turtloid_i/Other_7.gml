image_index=0
if entrance=1
{
if sprite_index=spiket_un1
{image_index=0; sprite_index=spiket_uncrounch}
else if sprite_index=spiket_uncrounch
{image_index=0; sprite_index=spiket_stand}
else if sprite_index=spiket_stand
{image_index=0; sprite_index=spiket_atk2}
else if sprite_index=spiket_atk2
{image_index=0; sprite_index=spiket_finta; alarm[0]=50}
}

if bbox_top>parWater.y+16
{if sprite_index=spiket_roll or sprite_index=spiket_roll2 {air=instance_create_depth(x,y-10,depth,ob_air_eff); air.hspeed=random_range(-2,2); air.vspeed=random_range(-1,-4); air.alarm[0]=50}}

