hit=bbox_bottom-(sprite_height/2)

scr_motion_mov()

if destroying=1 {exit}

counter_img+=0.3
if counter_img>4 {counter_img=0}

bowing+=5
if bowing>=360 {bowing=0}

rot_prop+=hsp*-1
if round(hsp)=0 {rot_prop+=lineal_move(rot_prop,0,0.5)}

rot_prop=min(rot_prop,45)
rot_prop=max(rot_prop,-45)
if alarm[0]<1 {alarm[0]=60}

if status="move"
{
    if x=spotx and y=spoty {vsp=0; hsp=0; status="stand"; spd=0}
    else
    {
		spd+=lineal_move(spd,1,0.1)
	    mspd=distance_to_point(spotx,spoty)
	    direction_fly = point_direction(x,y,spotx,spoty)
	    hsp = lengthdir_x(spd,direction_fly)*sign(abs(mspd));
	    vsp = lengthdir_y(spd,direction_fly)*sign(abs(mspd))+lengthdir_y(0.2,bowing);;
    }
}

if status="laser"
{
	spd+=lineal_move(spd,1,0.1)
   	mspd=distance_to_point(spotx,spoty)
	direction_fly = point_direction(x,y,spotx,spoty)
	hsp = lengthdir_x(spd,direction_fly)*sign(abs(mspd));
	vsp = lengthdir_y(spd,direction_fly)*sign(abs(mspd))+lengthdir_y(0.2,bowing);
		
    if laser=0
    {
	    if dir=1 {ls=instance_create_depth(x+16*dir,y+34,depth,obj_lasser); ls.image_angle=270+15}
	    if dir=-1 {ls=instance_create_depth(x+16*dir,y+34,depth,obj_lasser); ls.image_angle=270-15}
	    sound_effect=sfx_beamene
	    laser=1
    }
	
	if laser=1
	{
		if instance_exists(ls)
		{
			if dir=1 {ls.image_angle=angle_rotate(ls.image_angle,360-15,1)}
			if dir=-1 {ls.image_angle=angle_rotate(ls.image_angle,180+15,1)}
		}
	}
}
else {laser=0}

if status="missile"
{
    if missil=0
    {
	    mis=instance_create_depth(x+10*-dir,y,depth-1,obj_teranon_mis);
		instance_create_depth(x+10*-dir+random_range(-6,6),y+random_range(-6,6),depth-1,smokeobj)
		instance_create_depth(x+10*-dir+random_range(-6,6),y+random_range(-6,6),depth-1,smokeobj)
		instance_create_depth(x+10*-dir+random_range(-6,6),y+random_range(-6,6),depth-1,smokeobj)
		mis.dir=dir
	    missil=1
    }
}
else {missil=0}

if status="miss"
{
	if alarm[1]<1 {alarm[1]=30; total_mis+=1}
	if total_mis>=3 {total_mis=0; status="stand"; alarm[0]=60}
}
else {total_mis=0}

if instance_exists(ls)
{
	ls.x=x+16*dir
	ls.y=y+34
}
    
parp+=1
if parp>=2 {parp=0}