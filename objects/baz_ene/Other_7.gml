if sprite_index=spr_baz_shot {image_speed=0.4; sprite_index=spr_baz_ene; image_index=0}

if sprite_index=spr_baz_ene {if instance_exists(playerparent) {if x>playerparent.x {dir=-1} else {dir=1}}}

