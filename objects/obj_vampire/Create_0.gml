sndi=0
angle=0
jmp=0
counter_hit=0
effectersword=0
sound_hurt="sword"
pattern=0
protected=0
mirror=1
can=0
go=1
intro=1
global.bosshp=0
counterinv=0
hurtbright=0
protect=0
hurt_counter=0
resentido=0
rebote=0
volteate=0
dir=-1
hard=0
rot=0
spl2=instance_create_depth(x,y,depth,waterstand)
with (spl2) {instance_destroy()}
inwater=1
xtreme=0
see=1
bright_counter=0
alphvisible=1
//Mandatory variables. Don't get rid of these!
hsp     = 0; //hspeed replacement
jump    = 0; //Just a variable to check how many jumps you've made
free    = 10; //Whether you're in the air (1) or on the ground (0)
spr_dir = 1; //Sprite direction (useful for image_xscale)
hold    = 0; //Whether you're holding the left/right key

//Modify these to your heart's content.
vsp=0
grv_speed = 0;    //Speed at which vspeed increases
air_frict = 0;    //Number to decrease hsp by when no key is pressed in air
gnd_frict = 0;    //Number to decrease hsp by when no key is pressed on ground
max_slp   = 2;      //Highest slope (in px)
max_speed = 6;      //Max speed to go by
acc_speed = 2;      //How much to increase the hsp by
jmp_speed = 5;      //How many pixels per step you jump by(decreases by grv_speed every step)
subVelx = 0
subVely = 0
vel[0] = 0
vel[1] = 0
fric=0
vfric=0
distance=0

wwb = sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index);
hhb = sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);

hitbox_x=wwb
hitbox_y=hhb
hitoff_x=0
hitoff_y=0

hitbox_xp=wwb
hitbox_yp=hhb
hitoff_xp=0
hitoff_yp=0
snd=0
zstands=spr_vampire_stands
zstand=spr_vampire_stand
zprethunder=spr_vampire_prethunder
zthunder=spr_vampire_thunder
zray=spr_vampire_shock
ztele=spr_vampire_tele
zapp=spr_vampire_app
zhurt=spr_vampire_dmg
zspawn=spr_vampire_spawn
zspawn2=spr_vampire_spawn2
zpreshoriu=spr_vampire_shoriu
zshoriu=spr_vampire_shoriu2

teles=0
center=0
xsite=x
ysite=y
repeats=0
direc=dir
g=90
base_darkness=0.5
intro=1
altura=80
atk="normal"
counter=0
shot_bats=0

i=0
repeat(20) {bat[i]=ene_bat2; i+=1}
totalbats=8

outside=0
flys=3
image_speed=0.2
ef=instance_create_depth(x,y-16,depth,obj_effect)
with(ef) {instance_destroy()}

ztrail=instance_create_depth(x,y,depth,obj_trailadv)
ztrail2=instance_create_depth(x,y,depth,obj_trailadv)
with(ztrail) {instance_destroy()}
with(ztrail2) {instance_destroy()}
trail=0

zi=0
repeat(8)
{
if zi=0 {spot_t[zi]=32} else {spot_t[zi]=(32*zi)+32}
zi+=1
}

sp=irandom(5)
thunder_quantity=3
counter_thunder=0