scr_motion()

if mirror=1
{
if x>playerparent.x
{image_xscale=-1}

if x<playerparent.x
{image_xscale=1}
}

if entrance=2
{
if rebote=0 {vsp+=0.1}
if rebote=1 {vsp+=0.2}
if rebote=2 {vsp+=0.4}
}
if entrance=1
{
if !place_meeting(obj_blockSolid,x,y-1) {vspeed+=0.2}
else {vsp=0}
}
if entrance=0
{
if !place_meeting(obj_blockSolid,x,y-1) {vspeed+=0.2}
else {vsp=0}
}

if vspeed<=-6
{vspeed=-6}

if vspeed>=6
{vspeed=6}

if sprite_index=spiket_roll
{image_speed=0.6}
if sprite_index=spiket_uncrounch
{image_speed=0.2}
if sprite_index=spiket_stand
{image_speed=0.2}
if sprite_index=spiket_un1
{image_speed=0.3}
if sprite_index=spiket_finta
{image_speed=0.6}
if sprite_index=spiket_atk2
{image_speed=0.2}


if sprite_index=spiket_roll or sprite_index=spiket_un1 or sprite_index=spiket_uncrounch
{}
else
{
if place_meeting(x,y+1,parSolid) {} else {y+=1}
}


if place_meeting(x,y+vsp,parSolid)
{
	rebote+=1
	vspeed=vspeed-vspeed-vspeed/2-vspeed/4

	if rebote=3 {alarm[1]=10; entrance=1}
}
