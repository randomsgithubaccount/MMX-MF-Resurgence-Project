if sprite_index=spr_machine_bossj {sprite_index=spr_machine_boss; image_index=0; jump=0}
if sprite_index=spr_machine_bossb {sprite_index=spr_machine_boss; image_index=0; buster=0}
if sprite_index=spr_machine_bossa {image_index=3}

if sprite_index=spr_machine_boss
{
if alarm[1]<1 {alarm[1]=random_range(30,100)}
if instance_exists(playerparent) {if playerparent.x>x {dir=1} else {dir=-1}}
}

