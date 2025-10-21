hit=y-(sprite_height/2)

if instance_exists(playerparent)
{
if distance_to_object(playerparent)<230 {mp_potential_step(playerparent.x,playerparent.y-15,1,false)}

if x>playerparent.x {dir=1}
if x<playerparent.x {dir=-1}
}

