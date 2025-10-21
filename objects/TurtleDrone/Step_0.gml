if instance_exists(playerparent) {
if angulo>360 {angulo=0}

if sprite_index=s_turtledrone or sprite_index=s_turtledrone_at or sprite_index=s_turtledrone_ap
{
angulo+=5
x=playerparent.x + lengthdir_x(25,angulo)
y=playerparent.y-16 + lengthdir_y(25,angulo)
}

if sprite_index=TurtledroneAT2 && angulo=0
{hsp=4}
if sprite_index=TurtledroneAT2 && angulo=180
{hsp=-4}
hspeed=hsp
if sprite_index=TurtledroneAT2 && image_index>2 
{
if collision_point(x,y,obj_blockSolid,true,true) {instance_destroy()}
}
}
else {instance_destroy()}

scr_hitbox_buster(1)

