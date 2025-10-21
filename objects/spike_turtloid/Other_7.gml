if sprite_index=spiket_voltea
{sprite_index=spiket_atk1; alarm[1]=100; image_index=0}

if sprite_index=spiket_jump
{sprite_index=spiket_stand; image_index=0}

if sprite_index=spiket_atk4
{sprite_index=spiket_stand; image_index=0}

if sprite_index=spiket_disp
{sprite_index=spiket_stand; image_index=0}

if sprite_index=spiket_un1
{sprite_index=spiket_uncrounch; image_index=0}
else if sprite_index=spiket_uncrounch
{sprite_index=spiket_stand; image_index=0}
else if sprite_index=spiket_atk2
{
sprite_index=spiket_disp; image_index=0
if dir=-1
{
ab=instance_create_depth(x-17,y-28,depth,pukik1); ab.image_xscale=-1
ab1=instance_create_depth(x-27,y-28,depth,pukik2); ab1.image_xscale=-1
ab2=instance_create_depth(ab1.x-16,y-28,depth,pukik2); ab2.image_xscale=-1
ab3=instance_create_depth(ab2.x-16,y-28,depth,pukik2); ab3.image_xscale=-1
ab4=instance_create_depth(ab3.x-16,y-28,depth,pukik2); ab4.image_xscale=-1
ab5=instance_create_depth(ab4.x-16,y-28,depth,pukik2); ab5.image_xscale=-1
ab6=instance_create_depth(ab5.x-16,y-28,depth,pukik2); ab6.image_xscale=-1
ab7=instance_create_depth(ab6.x-16,y-28,depth,pukik2); ab7.image_xscale=-1
ab8=instance_create_depth(ab7.x-16,y-28,depth,pukik2); ab8.image_xscale=-1
ab9=instance_create_depth(ab8.x-16,y-28,depth,pukik2); ab9.image_xscale=-1
ab10=instance_create_depth(ab9.x-16,y-28,depth,pukik2); ab10.image_xscale=-1
ab11=instance_create_depth(ab10.x-16,y-28,depth,pukik2); ab11.image_xscale=-1
ab12=instance_create_depth(ab11.x-16,y-28,depth,pukik2); ab12.image_xscale=-1
ab13=instance_create_depth(ab12.x-16,y-28,depth,pukik2); ab13.image_xscale=-1
ab14=instance_create_depth(ab13.x-16,y-28,depth,pukik2); ab14.image_xscale=-1
ab15=instance_create_depth(ab14.x-16,y-28,depth,pukik3); ab15.image_xscale=-1
}
if dir=1
{
ab=instance_create_depth(x+17,y-28,depth,pukik1); ab.image_xscale=1
ab1=instance_create_depth(x+27,y-28,depth,pukik2); ab1.image_xscale=1
ab2=instance_create_depth(ab1.x+16,y-28,depth,pukik2); ab2.image_xscale=1
ab3=instance_create_depth(ab2.x+16,y-28,depth,pukik2); ab3.image_xscale=1
ab4=instance_create_depth(ab3.x+16,y-28,depth,pukik2); ab4.image_xscale=1
ab5=instance_create_depth(ab4.x+16,y-28,depth,pukik2); ab5.image_xscale=1
ab6=instance_create_depth(ab5.x+16,y-28,depth,pukik2); ab6.image_xscale=1
ab7=instance_create_depth(ab6.x+16,y-28,depth,pukik2); ab7.image_xscale=1
ab8=instance_create_depth(ab7.x+16,y-28,depth,pukik2); ab8.image_xscale=1
ab9=instance_create_depth(ab8.x+16,y-28,depth,pukik2); ab9.image_xscale=1
ab10=instance_create_depth(ab9.x+16,y-28,depth,pukik2); ab10.image_xscale=1
ab11=instance_create_depth(ab10.x+16,y-28,depth,pukik2); ab11.image_xscale=1
ab12=instance_create_depth(ab11.x+16,y-28,depth,pukik2); ab12.image_xscale=1
ab13=instance_create_depth(ab12.x+16,y-28,depth,pukik2); ab13.image_xscale=1
ab14=instance_create_depth(ab13.x+16,y-28,depth,pukik2); ab14.image_xscale=1
ab15=instance_create_depth(ab14.x+16,y-28,depth,pukik3); ab15.image_xscale=1
}
}

if sprite_index=spiket_crounch
{
    if xtreme=0
    {
    sprite_index=spiket_roll; alarm[0]=random_range(100,200)
    vsp=-6
        if instance_exists(playerparent)
        {
                if playerparent.x>x
                {hsp=6}
                if playerparent.x<x
                {hsp-=6}
        }
    }
    if xtreme=1
    {
    sprite_index=spiket_xtremeroll; alarm[0]=random_range(200,250)
    vsp=-6
    }
}

if sprite_index=spiket_finta
{sprite_index=spiket_stand; image_index=0}

if sprite_index=spiket_preatk3
{sprite_index=spiket_atk3; alarm[1]=50}

if sprite_index=spiket_atk3
{
if dir=1 {instance_create_depth(x+20,y-25,depth,misil_spiket)}
if dir=-1 {instance_create_depth(x-20,y-25,depth,misil_spiket)}
}

if bbox_top>parWater.y+16
{
if sprite_index=spiket_roll or sprite_index=spiket_roll2 {air=instance_create_depth(x,y-10,depth,ob_air_eff); air.hspeed=-2*dir; air.alarm[0]=50}
if sprite_index=spiket_xtremeroll {air=instance_create_depth(x,y-10,depth,ob_air_eff); air.hspeed=random_range(-4,4); air.vspeed=random_range(0,-4); air.alarm[0]=50}
}

