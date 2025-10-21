if instance_exists(ob_lengua)
{
if ob_lengua.target=1 && place_meeting(x,y,ob_lengua)
{instance_destroy()}
}
else {instance_destroy()}

if place_meeting(x,y,playerparent) {ob_lengua.target=1}

