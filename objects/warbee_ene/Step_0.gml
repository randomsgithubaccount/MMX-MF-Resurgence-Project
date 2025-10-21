hit=bbox_bottom-(sprite_height/2)
scr_motion_mov()

if destroying=1 {exit}

counter_img+=0.3
if counter_img>4 {counter_img=0}

bowing+=5
if bowing>=360 {bowing=0}
vfric=lengthdir_y(0.5,bowing);


if rots>45
{dire*=-1}
if rots<0
{dire*=-1}

rots+=1*dire

if rots2>45
{dire2*=-1}
if rots2<0
{dire2*=-1}

rots2+=0.5*dire2

if hsp>0.2 {rot_prop=lineal_move(rot_prop,-45,5)}
else if hsp<-0.2 {rot_prop=lineal_move(rot_prop,45,5)}
else {rot_prop=lineal_move(rot_prop,0,5)}

if alarm[0]<1 {alarm[0]=90}

parp+=1
if parp>=2 {parp=0}

