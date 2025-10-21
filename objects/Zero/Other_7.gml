if (sprite_index=zintro) && global.canmove=10 
{
	sprite_index=zstand
	image_index=0
	global.canmove=1
}

if sprite_index=spr_dashstrike {sprite_index=zdash; image_index=13; global.canmove=1}
if sprite_index=ztele {image_index=6}
if sprite_index=zfinta {sprite_index=ztele; image_index=0}
if sprite_index=zice 
{
sprite_index=zstand; image_index=0
if instance_exists(ob_iceshield)
{
parts_1=instance_create_depth(ob_iceshield.x+22*dir,ob_iceshield.y-20,depth,parent_parts)
parts_1.sprite_index=spr_iceshield_debris
parts_1.sprite=spr_iceshield_debris
sound_effect=SFX_CRISTALINE
global.canmove=1
}
}
if sprite_index=zhaze 
{
sprite_index=zstand; image_index=0; global.canmove=1
i=0;
sombra=instance_create_depth(x,y,depth,zero_shadow); if global.xarmor=1 {sombra.c_color=c_yellow}
sombra2=instance_create_depth(x,y,depth,zero_shadow); sombra2.image_alpha=0.7; if global.xarmor=1 {sombra2.c_color=c_yellow}
sombra3=instance_create_depth(x,y,depth,zero_shadow); sombra3.image_alpha=0.4; if global.xarmor=1 {sombra3.c_color=c_yellow}
repeat(30) {sx[i]=x; sy[i]=y; sindex[i]=sprite_index; iindex[i]=image_index; sdir[i]=dir; i+=1}
heathaze=1
}
if sprite_index=zslash1 {sprite_index=zstand; global.canmove=1}
if sprite_index=zslash2 {sprite_index=zstand; global.canmove=1}
if sprite_index=zslash3 {sprite_index=zstand; global.canmove=1}

if sprite_index=zslashright {sprite_index=zstand; global.canmove=1}
if sprite_index=zslashup {sprite_index=zstand; global.canmove=1}
if sprite_index=zice_broke {sprite_index=zstand; global.canmove=1}

if sprite_index=zslashair {sprite_index=zjump; image_index=7}
if sprite_index=zslashair2 {sprite_index=zjump; image_index=6}
if sprite_index=zslashwall {sprite_index=zwall; image_index=2}
if sprite_index=zsitslash {sprite_index=zsit; image_index=1}

if sprite_index=zagarres {slash_agarre=0; sprite_index=zagarre; image_index=0}
if sprite_index=zagarreds {slash_agarre=0; sprite_index=zagarred; image_index=0}
if sprite_index=zagarreus {slash_agarre=0; sprite_index=zagarreu; image_index=0}
if sprite_index=zagarrevs {slash_agarre=0; sprite_index=zagarrev; image_index=0}

if sprite_index=rayretsuzan 
{instance_create_depth(x,y,depth,effect_white_scr); sprite_index=spr_nothing; image_index=0;}

if sprite_index=rayretsuzan2 {sprite_index=zslash2; image_index=12}

if sprite_index=zslash1 or sprite_index=zslash2 or sprite_index=zslash3 or sprite_index=zslashright or sprite_index=zslashup or sprite_index=zslashair or sprite_index=zslashair2 or sprite_index=zslashwall
{with(swords_normal) {instance_destroy()}}

if sprite_index=zbusterout {image_speed=0.2; global.canmove=1; sprite_index=zstand}
if sprite_index=zbusterouta {image_speed=0.2; global.canmove=1; sprite_index=zjump; image_index=6}
 
if sprite_index=zbuster && global.xarmor=0 {a=instance_create_depth(x+20*dir,y-25,depth,busterzerofull); a.hspeed=1*dir ; sprite_index=zbusterout; image_index=0}
if sprite_index=zbustera && global.xarmor=0 {a=instance_create_depth(x+20*dir,y-25,depth,busterzerofull); a.hspeed=1*dir ; sprite_index=zbusterouta; image_index=0}


if sprite_index=zslashfull {global.canmove=1; sprite_index=zstand}
if sprite_index=zslashfull2 {sprite_index=zjump; image_index=6}

if sprite_index=zslashfullair {if roll>max_roll {sprite_index=zjump; image_index=6; roll=0}; roll +=1}

if sprite_index=zjump {sprite_index=zstand; image_index=0}
if sprite_index=zjump2 {sprite_index=zjump; image_index=6}
if sprite_index=zrun {if runer=1 {global.energy[0]-=4}; image_index=2}
if sprite_index=zdead  {__view_set( e__VW.HSpeed, 0, 0 ); __view_set( e__VW.VSpeed, 0, 0 ); instance_create_depth(x,y-16,depth,deadeffectzz); with(View) {instance_destroy()}; instance_destroy()}
if sprite_index=zhurt {global.canmove=1; if free=true {sprite_index=zjump} else {sprite_index=zstand}; alarm[1]=80; resentido=1; ; sfx_s1=0; sfx_s2=0; sfx_s3=0}
if sprite_index=zdash 
{
onair=0; max_speed=runspeed; if free=false {sprite_index=zstand} else {sprite_index=zjump; image_index=6}
}

if sprite_index=zwall {image_index=2}
if sprite_index=zwall2 {sprite_index=zjump; image_index=2}

if sprite_index=zsit {image_index=1}
if sprite_index=zsitup {sprite_index=zstand; global.canmove=1}

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

if sprite_index=spr_uzfly
{sound_effect=flusnd2}

