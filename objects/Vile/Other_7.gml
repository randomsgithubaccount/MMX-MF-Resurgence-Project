if sprite_index=ztele {image_index=12}
if sprite_index=zstep or sprite_index=zstepS {sprite_index=zstand; grv_speed=main_gravity}
if sprite_index=zstandS {shotsprite=0; sprite_index=zstand}
if sprite_index=zfinta {sprite_index=ztele; image_index=0}
if sprite_index=zsk1 {bomber=0; sprite_index=zstand; image_index=5}
if sprite_index=zsk2 {bomber=0; sprite_index=zstand}
if sprite_index=zsk2_air {bomber=0; sprite_index=zjump; image_index=5}
if sprite_index=zsk1_air {bomber=0; sprite_index=zjump; image_index=5}

if (sprite_index=zintro) && global.canmove=10 
{
sprite_index=zstand
image_index=0
global.canmove=1
}

if sprite_index=zjump or sprite_index=zjumpS {image_index=7}
if sprite_index=zrun or sprite_index=zrunS {if runer=1 {global.energy[0]-=4}; image_index=2}
if sprite_index=zdead {__view_set( e__VW.HSpeed, 0, 0 ); __view_set( e__VW.VSpeed, 0, 0 ); instance_create_depth(x,y-16,depth,deadeffectz); with(View) {instance_destroy()}; instance_destroy()}
if sprite_index=zhurt {global.canmove=1; if free=true {sprite_index=zjump; image_index=5} else {sprite_index=zstand}; alarm[1]=80; resentido=1}

if sprite_index=zwall or sprite_index=zwallS {image_index=2}
if sprite_index=zwall2 or sprite_index=zwall2S {sprite_index=zjump; image_index=2}


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

