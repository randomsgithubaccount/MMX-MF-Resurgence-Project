if sprite_index=spr_drilldroid_jump {sprite_index=spr_drilldroid; image_index=0; jump=0}
if sprite_index=spr_drilldroid_atk2 {sprite_index=spr_drilldroid; image_index=0; buster=0}
if sprite_index=spr_drilldroid_atk {image_index=3}

if sprite_index=spr_drilldroid
{
if alarm[1]<1 {alarm[1]=random_range(30,100)}
if instance_exists(playerparent) {if playerparent.x>x {dir=1} else {dir=-1}}
}

