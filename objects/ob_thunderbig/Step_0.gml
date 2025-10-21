
if instance_exists(playerparent)
{
if place_meeting(x,y,parenemy) or place_meeting(x,y,parEnemynohit) or place_meeting(x,y,bossparent) or place_meeting(x,y,parenemy_solid) {playerparent.slow=1} else {playerparent.slow=0}
}

scr_hitbox_saber(0.2)

