if sprite_index=ztele {image_index=16}
if sprite_index=zstep or sprite_index=zstepS {sprite_index=zstand; grv_speed=main_gravity}
if sprite_index=zstandS {shotsprite=0; sprite_index=zstand}
if sprite_index=zstandS2 {shotsprite=0; sprite_index=zstand}
if sprite_index=zfinta 
{
	if stage_finished=1
	{
		sprite_index=ztele; image_index=0
	}
	else
	{
		sprite_index=zstand; image_index=0; global.canmove=1
	}
}

if (sprite_index=zintro) && global.canmove=10 
{
	sprite_index=zstand
	image_index=0
	global.canmove=1
}

if sprite_index=s_thunderquake_air or sprite_index=s_thunderquake
{
global.canmove=1
thunder_created=0
if free=false {sprite_index=zstand}
if free=true {sprite_index=zjump; image_index=4}
}

if sprite_index=s_burstrike_pre 
{
image_speed=0
sprite_index=s_burstrikeR
if dir=1
{
if ctrl.right && ctrl.up {image_index=1}
else if ctrl.right && ctrl.down {image_index=3}
else if ctrl.up {image_index=2}
else if ctrl.right {image_index=0}
else {image_index=0}
}
if dir=-1
{
if ctrl.left && ctrl.up {image_index=1}
else if ctrl.left && ctrl.down {image_index=3}
else if ctrl.up {image_index=2}
else if ctrl.left {image_index=0}
else {image_index=0}
}
}

if sprite_index=zjump or sprite_index=zjumpS {image_index=6}
if sprite_index=zrun or sprite_index=zrunS {if runer=1 {global.energy[0]-=4}; image_index=1}
if sprite_index=zdead {__view_set( e__VW.HSpeed, 0, 0 ); __view_set( e__VW.VSpeed, 0, 0 ); instance_create_depth(x,y-16,depth,deadeffectz); with(View) {instance_destroy()}; instance_destroy()}
if sprite_index=zhurt {global.canmove=1; if free=true {sprite_index=zjump; image_index=5} else {sprite_index=zstand}; alarm[1]=80; resentido=1}
if sprite_index=zdash or sprite_index=zdashS 
{
onair=0; max_speed=runspeed; if free=false {sprite_index=zstand; hsp=0} else {sprite_index=zjump; image_index=6}
}

if sprite_index=zdashup {sprite_index=zjump; image_index=7; vsp=0; max_speed=runspeed; inmune=0}
if sprite_index=zwall or sprite_index=zwallS {image_index=2}
if sprite_index=zwall2 or sprite_index=zwall2S {sprite_index=zjump; image_index=2}

if sprite_index=zsit {image_index=1}
if sprite_index=zsitup {sprite_index=zstand; global.canmove=1}
if sprite_index=zsitS {image_index=1}
if sprite_index=zsitupS {sprite_index=zstand; global.canmove=1}

if sprite_index=zclimb2 
{
sprite_index=zstand
nearestclimb2=instance_nearest(x,y,escSolid)
y=nearestclimb2.bbox_top-1
x=nearestclimb2.x+16
global.canmove=1
}
if sprite_index=zclimb3
{
y=nearestclimb2.y+16
x=nearestclimb2.x+16
sprite_index=zclimb
global.canmove=1
}

if sprite_index=zclimb
{
image_index=1
global.canmove=1
}

if sprite_index=s_flystand or sprite_index=s_flyrun or sprite_index=s_flyback
{sound_effect=flusnd2}

if sprite_index=s_flyrun or sprite_index=s_flyback
{image_index=1}
if sprite_index=s_flyrunS or sprite_index=s_flybackS
{image_index=1}

if sprite_index=s_flystandS or sprite_index=s_flyrunS or sprite_index=s_flybackS
{sound_effect=flusnd2}

if sprite_index=spr_novastrike 
{
	if repeats>nova_duration
	{
		global.canmove=1; sprite_index=zjump; image_index=6; with (resid_uarmor) {instance_destroy()}
		repeats=0
	}
	image_index=0
	repeats+=1
}
if sprite_index=spr_novastrike_pre {sprite_index=spr_novastrike; image_index=0; sound_effect=novasnd; nstrike=instance_create_depth(x,y,depth,resid_uarmor); nstrike.image_xscale=dir}
if sprite_index=s_rayuuken {if free=false{sprite_index=zstep} else {sprite_index=zjump; image_index=7}; global.canmove=1}

