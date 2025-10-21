init_enemy()
enehp=30
spd=0
movetowards=1
a=instance_create_depth(x,y,depth,thunderdest)
with(a) {instance_destroy()}
adic=0
free=true
parts=spr_elecgun_parts
destroy_time=5
destroy_effect=0
counter_bowing=0
bowing=0
target=0
startx=x
starty=y
image_speed=0
protect=0
hit=bbox_bottom-(sprite_height/2)
status=0
timer=5
counter=0 
can=0
angulo=0
intro=1
grv_speed=0.1
counter2=0
status="none"
clawl=subboss_clawL
clawr=subboss_clawR
head=subboss_clawhead
start=0
spot_alarm=4896-100
spot_introx=4896
spot_introy=900
snd=0
startx=x
starty=y
pattern="none"
yy=y
//clone 

t = 0;
increment = 6; //degrees -- freq = 1 oscillation per second (1Hz)
amplitude = 2; //pixels of peak oscillation
bspd=0
thunder=0
if timeline_exists(status_clawboss)
{timeline_index = status_clawboss; timeline_running=false; timeline_position = 0; timeline_loop = false; timeline_speed=1.5}


