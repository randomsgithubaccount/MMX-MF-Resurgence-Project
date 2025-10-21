// ---------------------------------FISICAS----------------------------------------
mainspd = 3
//Mandatory variables. Don't get rid of these!
hsp     = 0; //hspeed replacement
jump    = 0; //Just a variable to check how many jumps you've made
free    = 10; //Whether you're in the air (1) or on the ground (0)
spr_dir = 1; //Sprite direction (useful for image_xscale)
hold    = 0; //Whether you're holding the left/right key
fric=0
vfric=0
//Modify these to your heart's content.
vsp=0
hsp=0
grv_speed = 0.3;    //Speed at which vspeed increases
air_frict = 1; //Number to decrease hsp by when no key is pressed in air
gnd_frict = 1; //Number to decrease hsp by when no key is pressed on ground
max_slp   = 2;    //Highest slope (in px)
max_speed = 2;    //Max speed to go by
acc_speed = 2;  //How much to increase the hsp by
jmp_speed = 5;    //How many pixels per step you jump by(decreases by grv_speed every step)
dir       = 1;   // direccion
shotsprite = 0;  // sprite de disparo

dir=1
areax=20
areay=56
adic=0
charride=spr_nothing
global.canmove=1
alarm[0]=100
can=0

subVelx = 0
subVely = 0
vel[0] = 0
vel[1] = 0

