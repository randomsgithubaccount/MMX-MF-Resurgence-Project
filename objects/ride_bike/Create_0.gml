counter_air=0
ctrl=objControl
counterdash=0
yplus=0
dead=0
timer=6
counterd=0
fric=0
vfric=0
counter_snd=0
subVelx = 0
subVely = 0
vel[0] = 0
vel[1] = 0
yplus = 0
inramp=0
ConeDir = 0;
ConeSpread = 0;
VisorX = x+10;
VisorY = y-28;
size=500

rot=0
// ---------------------------------FISICAS----------------------------------------
mainspd = 3
//Mandatory variables. Don't get rid of these!
hsp     = 0; //hspeed replacement
jump    = 0; //Just a variable to check how many jumps you've made
free    = 10; //Whether you're in the air (1) or on the ground (0)
spr_dir = 1; //Sprite direction (useful for image_xscale)
hold    = 0; //Whether you're holding the left/right key
zhurt= spr_rideturtle_hurt
//Modify these to your heart's content.
vsp=0
hsp=0
grv_speed = 0.4;    //Speed at which vspeed increases
air_frict = 1; //Number to decrease hsp by when no key is pressed in air
gnd_frict = 1; //Number to decrease hsp by when no key is pressed on ground
max_slp   = 2;    //Highest slope (in px)
max_speed = 1;    //Max speed to go by
acc_speed = 2;  //How much to increase the hsp by
jmp_speed = 5;    //How many pixels per step you jump by(decreases by grv_speed every step)
dir       = 1;   // direccion
shotsprite = 0;  // sprite de disparo
spr_anim=0
resentido=0
counter=0
dir=1
draw_jet=0
onair=0
smokeff=0
effdasher=0
shotsprite=0
draw_run=0
playsoundcrg1=0
playsoundcrg2=0
runer=0
max_dash=0
in_dash=0
healtimer=0
skshieldcool=0
inmune=0
cantrans=0
wc=0
counterultimate=0
adic=0
out=0
shot=0
spl2=instance_create_depth(x,y,depth,waterstand)
with (spl2) {instance_destroy()}
inwater=0
paused=false
zhurt=ridejump
zdash2=ridedash


sb=spr_bike
sb_volt=spr_bike_volt
sb_up=spr_bike_up

if global.char=0
{
sb_voltm=s_mount_bikex2
sbm=s_mount_bikex
sb_upm=spr_mount_bikexu
}
if global.char=1
{
sb_voltm=s_mount_bikex2
sbm=s_mount_bikez
sb_upm=spr_mount_bikexu
}
if global.char=2
{
sb_voltm=s_mount_bikex2
sbm=s_mount_bikea
sb_upm=spr_mount_bikeau
}

frames=0

parts=spr_bike_parts
destroy_effect=1
destroy_time=10
current_pal=global.char;
my_pal_sprite=spr_bikepal;

