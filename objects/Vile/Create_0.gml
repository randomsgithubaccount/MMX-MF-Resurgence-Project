init_player();
dec=0
slow=0
subVelr=0
rappel = false
oldDir=0
visor=0
i=0
object_count=0
mis_can=1
mis_c=0
xVelSub = 0             // X Sub-pixel movement
yVelSub = 0             // Y Sub-pixel movement
runspeed=2
jmp_speed = 6
mis=0
grv_speed=0.25
main_gravity=0.25
bomber=0

if global.xarmor=0
{
current_pal=1;
my_pal_sprite=spr_vile_pal;

//NORMAL
zstand=s_vile_stand
zstep=s_vile_step
zrun=s_vile_run
zjump=s_vile_jump
zwall=s_vile_wall
zwall2=s_vile_wall2
zintro=s_vile_intro
zhurt=s_vile_hurt
zdead=s_vile_dead
zdash2=spr_xdashup

//BUSTER
zstandS=s_vile_stands
zstepS=s_vile_steps
zrunS=s_vile_runs
zjumpS=s_vile_jumps
zwallS=s_vile_walls
zwall2S=s_vile_wall2s
zsk1=s_vile_sk1
zsk1_air=s_vile_sk1_air
zsk2=s_vile_sk2
zsk2_air=s_vile_sk2_air
zfinta=s_vile_fint
ztele=s_vile_out
}

if global.xarmor=1
{
current_pal=1;
my_pal_sprite=spr_vile_pal;

//NORMAL
zstand=s_vile_stand
zstep=s_vile_step
zrun=s_vile_run
zjump=s_vile_jump
zwall=s_vile_wall
zwall2=s_vile_wall2
zintro=s_vile_intro
zhurt=s_vile_hurt
zdead=s_vile_dead
zdash2=spr_xdashup
//BUSTER
zstandS=s_vile_stands
zstepS=s_vile_steps
zrunS=s_vile_runs
zjumpS=s_vile_jumps
zwallS=s_vile_walls
zwall2S=s_vile_wall2s
zsk1=s_vile_sk1
zsk1_air=s_vile_sk1_air
zsk2=s_vile_sk2
zsk2_air=s_vile_sk2_air
zfinta=s_vile_fint
ztele=s_vile_out
}

zclimb=s_vile_climb
zclimb2=s_vile_climb2
zclimb3=s_vile_climb3
zclimbS=spr_xclimbs

if global.canmove=10 {sprite_index=zintro; image_speed=0.4; sound_effect=sndintro}

i=0
repeat(7) {mavene[i]=eMax; i+=1}
index_agarre=0
global.char=3

repeat(20) {sy[i]=y; i+=1}
sombra1 = instance_create_depth(x,y,depth,x_shadow)
sombra2 = instance_create_depth(x,y,depth,x_shadow)
sombra3 = instance_create_depth(x,y,depth,x_shadow)
sombra4 = instance_create_depth(x,y,depth,x_shadow)
with(sombra1) {instance_destroy()}
with(sombra2) {instance_destroy()}
with(sombra3) {instance_destroy()}
with(sombra4) {instance_destroy()}

my_pal_sprite=spr_vile_pal;

