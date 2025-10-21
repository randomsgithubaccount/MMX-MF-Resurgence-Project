scr_motion()
hit=y-(sprite_height/2)
if sprite_index=spiket_stand && go=1
{
if alarm[3]<1
{alarm[3]=random_range(20,50)}
}

if mirror=1 && sprite_index=spiket_stand
{
if instance_exists(playerparent)
{
if x>playerparent.x
{dir=-1}
if x<playerparent.x
{dir=1}
}
protect=0
}

if sprite_index=spiket_stand
{
hsp=0
}

if vsp<=-6
{vsp=-6}

if vsp>=6
{vsp=6}

if sprite_index=spiket_roll
{
protect=1

if instance_exists(playerparent)
{
if x+9>playerparent.x
{hsp-=0.1}
if x+9<playerparent.x
{hsp+=0.1}
}

if place_meeting(x+8,y,obj_blockSolid)
{
hsp=-2; dir=-1
a=instance_create_depth(x,y,depth,spikes_c); a.sprite_index=s_spikes_c; a.hspeed=0; a.vspeed=-8; a.image_xscale=1
b=instance_create_depth(x,y,depth,spikes_c); b.sprite_index=s_spikes_c1; b.hspeed=-8; b.vspeed=-3; b.image_xscale=1
c=instance_create_depth(x,y,depth,spikes_c); c.sprite_index=s_spikes_c2; c.hspeed=8; c.vspeed=-3; c.image_xscale=1
d=instance_create_depth(x,y,depth,spikes_c); d.sprite_index=s_spikes_c3; d.hspeed=-8; d.vspeed=-8; d.image_xscale=1
e=instance_create_depth(x,y,depth,spikes_c); e.sprite_index=s_spikes_c4; e.hspeed=8; e.vspeed=-8; e.image_xscale=1
sprite_index=spiket_roll2
}
if place_meeting(x-8,y,obj_blockSolid)
{
hsp=2; dir=1
a=instance_create_depth(x,y,depth,spikes_c); a.sprite_index=s_spikes_c; a.hspeed=0; a.vspeed=-8; a.image_xscale=1
b=instance_create_depth(x,y,depth,spikes_c); b.sprite_index=s_spikes_c1; b.hspeed=-8; b.vspeed=-3; b.image_xscale=1
c=instance_create_depth(x,y,depth,spikes_c); c.sprite_index=s_spikes_c2; c.hspeed=8; c.vspeed=-3; c.image_xscale=1
d=instance_create_depth(x,y,depth,spikes_c); d.sprite_index=s_spikes_c3; d.hspeed=-8; d.vspeed=-8; d.image_xscale=1
e=instance_create_depth(x,y,depth,spikes_c); e.sprite_index=s_spikes_c4; e.hspeed=8; e.vspeed=-8; e.image_xscale=1
sprite_index=spiket_roll2
}
}

if sprite_index=spiket_roll2
{
protect=1

if instance_exists(playerparent)
{
if x+9>playerparent.x
{hsp-=0.1}
if x+9<playerparent.x
{hsp+=0.1}
}

if place_meeting(x+8,y,obj_blockSolid)
{hsp=-2; dir=-1}
if place_meeting(x-8,y,obj_blockSolid)
{hsp=2; dir=1}
}

if sprite_index=spiket_atk1
{protect=2
if image_index=2
{
if dir=1
{
a=instance_create_depth(x,y,depth,spikes_b); a.sprite_index=s_spikes_b; a.hspeed=8; a.vspeed=-4; a.image_xscale=1
b=instance_create_depth(x,y,depth,spikes_b); b.sprite_index=s_spikes_b1; b.hspeed=8; b.vspeed=4; b.image_xscale=1
c=instance_create_depth(x,y,depth,spikes_b); c.sprite_index=s_spikes_b2; c.hspeed=8; c.vspeed=0; c.image_xscale=1
d=instance_create_depth(x,y,depth,spikes_b); d.sprite_index=s_spikes_b3; d.hspeed=8; d.vspeed=-8; d.image_xscale=1
e=instance_create_depth(x,y,depth,spikes_b); e.sprite_index=s_spikes_b4; e.hspeed=8; e.vspeed=8; e.image_xscale=1
}
if dir=-1
{
a=instance_create_depth(x,y,depth,spikes_b); a.sprite_index=s_spikes_b; a.hspeed=-8; a.vspeed=-4; a.image_xscale=-1
b=instance_create_depth(x,y,depth,spikes_b); b.sprite_index=s_spikes_b1; b.hspeed=-8; b.vspeed=4; b.image_xscale=-1
c=instance_create_depth(x,y,depth,spikes_b); c.sprite_index=s_spikes_b2; c.hspeed=-8; c.vspeed=0; c.image_xscale=-1
d=instance_create_depth(x,y,depth,spikes_b); d.sprite_index=s_spikes_b3; d.hspeed=-8; d.vspeed=-8; d.image_xscale=-1
e=instance_create_depth(x,y,depth,spikes_b); e.sprite_index=s_spikes_b4; e.hspeed=-8; e.vspeed=8; e.image_xscale=-1
}
}
}

if sprite_index=spiket_jump && free=true
{
image_speed=0.3
if image_index>=3 {image_index=3}
}
if sprite_index=spiket_jump && free=false && image_index>3 {hsp=0; image_speed=0.4}

nearest=instance_nearest(x,y,obj_blockSolid)

if instance_exists(henkidama)
{
}
else
{
if sprite_index=spiket_atk4 && image_index>9
{
instance_create_depth(x,y-75,depth,henkidama)
}
}

if go=1
{
    if global.bosshp<10 && hard=0
    {
    sound_music=BGMBOSS2; hard=1
    }
}

if sprite_index=spiket_roll
{
    image_speed=0.6; 
    if place_meeting(x+hsp,y,parSolid) {jmp=1}
    if place_meeting(x,y+2,parSolid) {vsp=-3*jmp; jmp+=1; if jmp>2 {jmp=1}}
}
if sprite_index=spiket_xtremeroll && instance_exists(playerparent)
{grv_speed=0.1; image_speed=0.6; if playerparent.x<x {oWater.xoffset+=4; playerparent.fric=-1.8}; if playerparent.x>x {oWater.xoffset-=4; playerparent.fric=1.8}}
if sprite_index=spiket_roll2
{
    image_speed=0.6
    if place_meeting(x+hsp,y,parSolid) {jmp=1}
    if place_meeting(x,y+2,parSolid) {vsp=-3*jmp; jmp+=1; if jmp>2 {jmp=1}}
}
if sprite_index=spiket_uncrounch
{image_speed=0.2; jmp=0}
if sprite_index=spiket_stand
{image_speed=0.2; protect=0}
if sprite_index=spiket_un1
{image_speed=0.3}
if sprite_index=spiket_finta
{image_speed=0.5; protect=0}
if sprite_index=spiket_disp
{image_speed=0.3; protect=0}
if sprite_index=spiket_atk2
{image_speed=0.1; protect=0}
if sprite_index=spiket_atk3
{image_speed=0.1; protect=0}
if sprite_index=spiket_atk1
{image_speed=0.1}
if sprite_index=spiket_atk4
{image_speed=0.2}

if sprite_index=spiket_roll
{if mask_index=spiket_mask {mask_index=spiket_mask2}}
else
{if mask_index=spiket_mask2 {mask_index=spiket_mask}}

if global.bosshp<1 && intro=0
{
defeat=instance_create_depth(x,y,depth,maverick_explode)
defeat.sprite_index=spiket_hurt
defeat.image_xscale=dir
instance_destroy()
}

if sprite_index=spiket_roll
{if bbox_top>parWater.bbox_bottom {if alarm[5]<1 {alarm[5]=random(20)}}}
else if sprite_index=spiket_roll2
{if bbox_top>parWater.bbox_bottom {if alarm[5]<1 {alarm[5]=random(20)}}}
else
{if bbox_top>parWater.bbox_bottom {if alarm[5]<1 {alarm[5]=random(40)}}}

if resentido=2
{bright_counter+=0.3}

