sndi=0
angle=0
direc=1
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
jmp_speed = 5;      //How many pixels per step you jump by (decreases by grv_speed every step)
subVelx = 0;
subVely = 0;
vel[0] = 0;
vel[1] = 0;
fric = 0;
vfric = 0;
distance = 0;

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

zintro=spr_highmax_intro
zshot1=spr_highmax_shot1
zshot2=spr_highmax_shot2
zcharge=spr_highmax_charge
ztackle=spr_highmax_tackle
zstand=spr_highmax_stand
zprearo=spr_highmax_preatk
zaro=spr_highmax_atk
zulti=spr_highmax_ulti
zhurt=spr_highmax_damage
zdead=spr_highmax_damage

xsite=x
ysite=y
image_speed=0
image_index=18
out=0
slashes=0
repeats=0
snd=0
mis=0
status="stand"
move_spd=6
wait_count=0

last_status="normal"
rebot=0
count_shots=0
count_ulti=0
site=0
mode=0
sy=0
ds=1

my_pal_sprite=spr_highmax_pal
current_pal=1

wait_time=30
total_ulti=2
max_rebot=2
total_shots=6
roter=0
roter_dir=1
ultimate_attack=-1
xtreme=1
starty=y

g=0
adic=0
mode=0
ball_spd=4
max_volt=2
count_volt=0
ulti_spd=40
ulti_sep=48

cr=instance_create_depth(x,y,depth+1,obj_highcharge)
with(cr) {instance_destroy()}

aro1=instance_create_depth(x,y,depth+1,obj_higharo)
with(aro1) {instance_destroy()}

aro2=instance_create_depth(x,y,depth+1,obj_higharo)
with(aro2) {instance_destroy()}