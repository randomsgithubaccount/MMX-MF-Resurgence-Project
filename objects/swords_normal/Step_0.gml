scr_hitbox_saber(0.2)

if instance_exists(playerparent)
{if place_meeting(x,y,parenemy) or place_meeting(x,y,parEnemynohit) or place_meeting(x,y,bossparent) or place_meeting(x,y,parenemy_solid) {playerparent.slow=2} else {playerparent.slow=0}

sprite_index=Zero.sprite_index
x=Zero.x
y=Zero.y
image_speed=Zero.image_speed
image_index=Zero.image_index
image_xscale=Zero.dir

if Zero.sprite_index=Zero.zslash1 {}
else if Zero.sprite_index=Zero.zslash2 {}
else if Zero.sprite_index=Zero.zslash3 {}
else if Zero.sprite_index=Zero.zslashair {}
else if Zero.sprite_index=Zero.zslashair2 {}
else if Zero.sprite_index=Zero.zslashup {}
else if Zero.sprite_index=Zero.zslashright {}
else if Zero.sprite_index=Zero.zslashwall {}
else if Zero.sprite_index=Zero.zslashfull {}
else if Zero.sprite_index=Zero.zslashfull2 {}
else if Zero.sprite_index=Zero.zsitslash {}
else if Zero.sprite_index=Zero.zagarres {}
else if Zero.sprite_index=Zero.zagarreds {}
else if Zero.sprite_index=Zero.zagarreus {}
else if Zero.sprite_index=Zero.zagarrevs {}
else if Zero.sprite_index=spr_dashstrike {}
else {instance_destroy()}
}


