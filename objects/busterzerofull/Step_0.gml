if sprite_index=s_zeroL2str
{image_speed=1}
if sprite_index=s_zeroL2
{image_speed=0.6}

if hspeed>0 && sprite_index=s_zeroL2str {der=1; hspeed=1}
if hspeed<0 && sprite_index=s_zeroL2str {izq=1; hspeed=-1}



if hspeed>0 {image_xscale=1}
if hspeed<0 {image_xscale=-1}

beffect+=1

if beffect>1
{
instance_create_depth(x,y+random_range(-10,10),depth,beff)
beffect=0
}

scr_hitbox_buster(2)

