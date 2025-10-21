if instance_exists(playerparent) {if alarm[0]<1 {alarm[0]=20}}
if alarm[1]<1 {alarm[1]=120}

if down=1 {vspeed=-3; hspeed=0} 
if up=1 {vspeed=3; hspeed=0}
if left=1 {hspeed=-3; vspeed=0} 
if right=1 {hspeed=3; vspeed=0}

image_speed=0.5

count+=0.2

if count>=1
{
//solarvar=instance_create_depth(x,y,depth,ob_solarsolid); count=0
}


if place_meeting(x,y,obj_blockSolid) {instance_create_depth(x,y,depth,obj_solarbeam); instance_destroy()}

