if !instance_exists(ahera_sorceress) {instance_destroy()}

hsp = 0
vsp=0
subVelx = 0
subVely = 0
vel[0] = 0
vel[1] = 0
free = false
grv_speed = 0.3
max_slp = 1
max_speed = 6
vfric=0
fric=0
hurt_counter=0
sound_hurt="sword"
start=0
resentido=0
protect=0
dir=-1
bright_counter=0
go=0
created=0
counter_gib=0
out=0
image_alpha=0.7
xx=x
yy=y
counter_gib=0
angulo=0
pattern=0
spotx=x
spoty=y
xto=0
yto=0
spd=0
mirror=0
down=0

top=0
bottom=0
right=0
left=0
alarm[0]=40
image_speed=0.2
sound_effect=SFX_SSHIELD 

x=max(x,ahera_sorceress.left)
x=min(x,ahera_sorceress.right)

y=max(y,ahera_sorceress.top)
y=min(y,ahera_sorceress.bottom)

if instance_exists(ahera_sorceress)
{
image_index=0

if ahera_sorceress.boss=0 {sprite_index=spr_tecno_vile; alarm[1]=200}
if ahera_sorceress.boss=1 {sprite_index=spr_tecno_eagle; grv_speed=0; vsp=0; y-=50}
if ahera_sorceress.boss=2 {sprite_index=spr_tecno_penguin}
if ahera_sorceress.boss=3 {sprite_index=spr_tecno_doppler; alarm[1]=200}
if ahera_sorceress.boss=4 {sprite_index=spr_tecno_magma}
if ahera_sorceress.boss=5 {sprite_index=spr_tecno_armadillo; boss=0}
}

instance_create_depth(x,y-20,depth,eff_hacking)

if instance_exists(playerparent) {if playerparent.x>x {image_xscale=1} else {image_xscale=-1}}

