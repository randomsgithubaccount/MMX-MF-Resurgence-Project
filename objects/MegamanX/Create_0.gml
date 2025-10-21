init_player();
dec=0
slow=0
subVelr=0
rappel = false
oldDir=0
visor=0
i=0
object_count=0
fly_spd=1.5

xVelSub = 0             // X Sub-pixel movement
yVelSub = 0             // Y Sub-pixel movement

repeat(20) {sy[i]=y; i+=1}
canchargue=1
sombra1 = instance_create_depth(x,y,depth,x_shadow)
sombra2 = instance_create_depth(x,y,depth,x_shadow)
sombra3 = instance_create_depth(x,y,depth,x_shadow)
sombra4 = instance_create_depth(x,y,depth,x_shadow)
contador = 0
thunder_created=0
nova_duration=2

global.x_skill[0]=1

with(sombra1) {instance_destroy()}
with(sombra2) {instance_destroy()}
with(sombra3) {instance_destroy()}
with(sombra4) {instance_destroy()}
 
global.ghead=0; /// ACTIVATE GAIA PARTS
global.garmor=0;
global.gbuster=0;
global.gboots=0;

global.gheadhave=1; //// HAVE GAIA ARMOR?
global.garmorhave=1;
global.gbusterhave=1;
global.gbootshave=1;

global.thead=0; //// ACTIVATE TANK PARTS
global.tarmor=0;
global.tbuster=0;
global.tboots=0;

global.theadhave=1;  /// HAVE ARMOR ?
global.tarmorhave=1;
global.tbusterhave=1;
global.tbootshave=1;

global.xarmor=1 /// ACTIVATE ULTIMATE ARMOR 1 

if global.xarmor=0
{
current_pal=0;
my_pal_sprite=spr_beholder_pal;

//NORMAL
zstand=spr_xstand
zstep=spr_xstep
zrun=spr_xrun
zjump=spr_xjump
zdash=spr_xdash
zwall=spr_xwall
zwall2=spr_xwall2
zsit=spr_xsit
zsitup=spr_xsitup
zfinta=spr_xfint
zdash2=s_axl_dash2
zintro=spr_xintro

//BUSTER
zstandS=spr_xstands
zstandS2=spr_xstands_c
zstepS=spr_xsteps
zrunS=spr_xruns
zjumpS=spr_xjumps
zdashS=spr_xdashs
zwallS=spr_xwalls
zwall2S=spr_xwall2s
zsitS=spr_xsits
zsitupS=spr_xsitups

zintro=spr_xintro
zhurt=spr_xhurt
zdead=spr_xdead
zclimb=spr_xclimb
zclimb2=spr_xclimb2
zclimb3=spr_xclimb3
zclimbS=spr_xclimbs
zdashup=spr_xdashup
ztele=spr_xout
zagarre=spr_xrappel
zagarres=spr_xrappels

}

if global.xarmor=1
{
current_pal=1;
my_pal_sprite=spr_upal;

//NORMAL
zstand=spr_uxstand
zstep=spr_uxstep
zrun=spr_uxrun
zjump=spr_uxjump
zdash=spr_uxdash
zwall=spr_uxwall
zwall2=spr_uxwall2
zsit=spr_uxsit
zsitup=spr_uxsitup
zfinta=spr_xfint
zdash2=s_axl_dash2
zintro=spr_uxintro

//BUSTER
zstandS=spr_uxstands
zstandS2=spr_uxstands_c
zstepS=spr_uxstepS
zrunS=spr_uxrunS
zjumpS=spr_uxjumpS
zdashS=spr_uxdashS
zwallS=spr_uxwallS
zwall2S=spr_uxwall2S
zsitS=spr_uxsitS
zsitupS=spr_uxsitupS

zintro=spr_uxintro
zhurt=spr_uxhurt
zdead=spr_xdead
zclimb=spr_xclimb
zclimb2=spr_xclimb2
zclimb3=spr_xclimb3
zclimbS=spr_xclimbs
zdashup=spr_uxdashup
ztele=spr_xout
zagarre=spr_xrappel
zagarres=spr_xrappels
}

if global.canmove=10 && global.xarmor=0 {sprite_index=zintro; image_speed=0.4; sound_effect=sndintro}
if global.canmove=10 && global.xarmor=1 {sprite_index=zintro; image_speed=0.5; sound_effect=sndintro}

i=0
repeat(7) {mavene[i]=eMax; i+=1}

index_agarre=0
global.char=0
g_ground=0
bnorm=noone
repeats=0