visor=0
StateTime = 0;  
DrawAngle=0

ctrl=objControl
// ---------------------------------FISICAS----------------------------------------
mainspd = 3
//Mandatory variables. Don't get rid of these!
hsp     = 0; //hspeed replacement
jump    = 0; //Just a variable to check how many jumps you've made
free    = 10; //Whether you're in the air (1) or on the ground (0)
spr_dir = 1; //Sprite direction (useful for image_xscale)
hold    = 0; //Whether you're holding the left/right key

//Modify these to your heart's content.
vsp=0
hsp=0
grv_speed = 0.1;    //Speed at which vspeed increases
air_frict = 1; //Number to decrease hsp by when no key is pressed in air
gnd_frict = 1; //Number to decrease hsp by when no key is pressed on ground
max_slp   = 2;    //Highest slope (in px)
max_speed = 1;    //Max speed to go by
acc_speed = 2;  //How much to increase the hsp by
jmp_speed = 4;    //How many pixels per step you jump by(decreases by grv_speed every step)
dir       = 1;   // direccion
shotsprite = 0;  // sprite de disparo
vfric=0
fric=0
moving=0
subVelx = 0
subVely = 0
vel[0] = 0
vel[1] = 0
dec=0

resentido=0
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
sit=0
sfx=0
smoker=0
lodo=0
slow=0
poison=0
alpha_poison=0
spl2=instance_create_depth(x,y,depth,waterstand)

with (spl2) {instance_destroy()}
inwater=0
paused=false
zhurt=ridejump
zdash2=ridedash

if global.char=0
{
if sprite_index=ridestand {charride=s_mmx_ridestand}
if sprite_index=riderun {charride=s_mmx_riderun}
if sprite_index=rideshot {charride=s_mmx_rideshot}
}

if global.char=1
{
if sprite_index=ridestand {charride=s_z_ridestand}
if sprite_index=riderun {charride=s_z_riderun}
if sprite_index=rideshot {charride=s_z_rideshot}
}

if global.char=2
{
if sprite_index=ridestand {charride=s_axl_ridestand}
if sprite_index=riderun {charride=s_axl_riderun}
if sprite_index=rideshot {charride=s_axl_rideshot}
}


