hit=y+10


if distance_to_object(playerparent)<50 && sprite_index=spr_enenube && status=0 
{
sprite_index=spr_enenube_at; image_index=0; status=1; instance_create_depth(x,y,depth,enenube_proj)
}

if alarm[0]<1 && status=1 {alarm[0]=100}
if alarm[1]<1 {alarm[0]=100}

if sprite_index=spr_enenube  {image_speed=0.3} else {hsp=0}
if sprite_index=spr_enenube_at {image_speed=0.3; sound_hurt="not"; hurt_counter+=0.1}

/// -- Water Bobbing
if (btm <= abs(bspd))
{
     acc *= -1;
}

bspd += acc;
//bspd = round(bspd*1000)/1000;
y += bspd/2;

x+=spd

