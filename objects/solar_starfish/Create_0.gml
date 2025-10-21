counter_hit=0
direc=1
angle=0
effectersword=0
sound_hurt="sword"
pattern=0
yy=y
xx=x
protected=0
protect=0
mirror=1
can=0
animation=0
go=0
protect=0
counterinv=0
cant_xtreme=0
countersmoke=0
created=0
hurtbright=0
hurt_counter=0
cabom=0
resentido=0
rebote=0
volteate=0
sp=0
dir=-1
counter_xtreme=0
spd=0
hard=0
rot=0
hado=0
start=0
flamc=0
see=1
alphvisible=1
bright_counter=0
distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X/2),y)
nearest=instance_nearest(x,y,playerparent)
intro=1
angulo=0
fric=0
vfric=0
//Mandatory variables. Don't get rid of these!
hsp     = 0; //hspeed replacement
jump    = 0; //Just a variable to check how many jumps you've made
free    = true; //Whether you're in the air (1) or on the ground (0)
spr_dir = 1; //Sprite direction (useful for image_xscale)
hold    = 0; //Whether you're holding the left/right key

//Modify these to your heart's content.
vsp=0
grv_speed = 0.25;    //Speed at which vspeed increases
air_frict = 0;    //Number to decrease hsp by when no key is pressed in air
gnd_frict = 0;    //Number to decrease hsp by when no key is pressed on ground
max_slp   = 1;      //Highest slope (in px)
max_speed = 6;      //Max speed to go by
acc_speed = 2;      //How much to increase the hsp by
jmp_speed = 5;      //How many pixels per step you jump by(decreases by grv_speed every step)
charge=0
xtreme=1

subVelx = 0
subVely = 0
vel[0] = 0
vel[1] = 0
global.yougot=3

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
target_dir=90
zsp=0
type=1
xtreme=1

if xtreme=0
{
my_pal_sprite=spr_solar_palette
current_pal=0
}

if xtreme=1
{
my_pal_sprite=spr_solar_palette
current_pal=1
}
ultimate=0