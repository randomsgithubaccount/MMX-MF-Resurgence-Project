down=0
up=0
left=0
right=0
rand=random(1)
rand2=random(1)
if instance_exists(playerparent) {if y>playerparent.y {up=1}; if y<playerparent.y {down=1}}
if rand2=0 {} else {sprite_index=spr_shark_volt; image_index=0}

