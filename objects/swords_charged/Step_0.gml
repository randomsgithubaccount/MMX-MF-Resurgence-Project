if instance_exists(Zero)
{
sprite_index=Zero.sprite_index
x=Zero.x
y=Zero.y
image_speed=Zero.image_speed
image_index=Zero.image_index
image_xscale=Zero.dir

if Zero.sprite_index=Zero.zslashfull {}
else if Zero.sprite_index=Zero.zslashfull2 {}
else {instance_destroy()}

if instance_exists(playerparent)
{if place_meeting(x,y,parenemy) or place_meeting(x,y,parEnemynohit) or place_meeting(x,y,bossparent) or place_meeting(x,y,parenemy_solid) {playerparent.slow=2} else {playerparent.slow=0}}
scr_hitbox_saber(0.4)
}

