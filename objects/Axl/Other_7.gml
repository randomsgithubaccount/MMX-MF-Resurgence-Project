if sprite_index=zfinta {sprite_index=ztele; image_index=0}

if (sprite_index=zintro) && global.canmove=10 
{
sprite_index=zstand
image_index=0
global.canmove=1
}


if sprite_index=zshotU or sprite_index=zshotUR or sprite_index=zshotDR or sprite_index=zshot
{
	global.canmove=1; shot_sprited=0
}
	
if sprite_index=s_axl_skF_air {sprite_index=zjump; image_index=4; global.canmove=1; if dir=1 {dir=-1} else {dir=1}}
if sprite_index=s_axl_skF {sprite_index=zstand; image_index=0; global.canmove=1; if dir=1 {dir=-1} else {dir=1}}

if sprite_index=s_axl_skP
{
if free=true {sprite_index=s_axl_skF_air; image_index=0}
if free=false {sprite_index=s_axl_skF; image_index=0}
}

if sprite_index=s_axl_sk {sprite_index=s_axl_skP; image_index=0}
if sprite_index=s_axl_sk_air {sprite_index=s_axl_skP; image_index=0}


if sprite_index=zjump {sprite_index=zstand; image_index=0}
if sprite_index=zrun {image_index=1}
if sprite_index=zdead  {__view_set( e__VW.HSpeed, 0, 0 ); __view_set( e__VW.VSpeed, 0, 0 ); instance_create_depth(x,y-16,depth,deadeffectzz); with(View) {instance_destroy()}; instance_destroy()}
if sprite_index=zhurt {global.canmove=1; if free=true {sprite_index=zjump} else {sprite_index=zstand}; alarm[1]=80; resentido=1; ; sfx_s1=0; sfx_s2=0; sfx_s3=0}
if sprite_index=zdash 
{
onair=0; max_speed=runspeed; if free=false {sprite_index=zstand} else {sprite_index=zjump; image_index=6}
}

if sprite_index=zdash2
{
inmune=0; onair=0; max_speed=runspeed; if free=false {sprite_index=zstand} else {sprite_index=zjump; image_index=6}
}

if sprite_index=zwall {image_index=2}
if sprite_index=zwall2 {sprite_index=zjump; image_index=2}

if sprite_index=zsit {image_index=1}
if sprite_index=zsitup {sprite_index=zstand; global.canmove=1}

if sprite_index=zclimb {image_index=1}

if sprite_index=zclimb2 
{
	inmune=0
	sprite_index=zstand
	nearestclimb2=instance_nearest(x,y,escSolid)
	y=nearestclimb2.bbox_top
	x=nearestclimb2.x+16
	global.canmove=1
}
if sprite_index=zclimb3
{
	y=nearestclimb2.y+16
	x=nearestclimb2.x+16
	sprite_index=zclimb
}

