counterb+=1

if counterb>=1
{instance_create_depth(x+random_range(-40,40),y+random_range(-60,40),depth,bullet_sk); counterb=0}

if place_meeting(x-8,y,parSolid) or place_meeting(x+8,y,parSolid)
{hspeed=0}

if place_meeting(x,y,parSolid) or place_meeting(x,y,parSolid)
{vspeed=0}

if destroy=0
{
if ctrl.up {vspeed=lerp(vspeed,-2,0.1)}
if ctrl.down {vspeed=lerp(vspeed,2,0.1)}
}

if place_meeting(x,y,playerparent) && destroy=1 {instance_destroy()} 

if !instance_exists(playerparent) {instance_destroy()}

