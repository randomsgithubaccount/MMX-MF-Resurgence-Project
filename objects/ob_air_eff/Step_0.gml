if hspeed<0 {sprite_index=s_air_effecth}
if hspeed>0 {sprite_index=s_air_effect_h2}
if vspeed<0 {sprite_index=s_air_effectv}
if vspeed>0 {sprite_index=s_air_effectv}
xoffset=0
if instance_exists(playerparent)
{
if place_meeting(x,y,playerparent)
{
if hspeed<0 {playerparent.fric+=0.3}
if hspeed>0 {playerparent.fric-=0.3}
if vspeed<0 {playerparent.vfric-=0.5}
if vspeed>0 {playerparent.vfric+=0.5}
}
}

if dest=1 {image_alpha-=0.1}

if bbox_top<parWater.y+16
{image_alpha-=0.1}

