if go=0
{
if instance_exists(playerparent) && follow=1
{move_towards_point(playerparent.x,playerparent.y-15,6)}
go=1
}

if collision_point(x,y,obj_blockSolid,true,true) {instance_destroy()}

