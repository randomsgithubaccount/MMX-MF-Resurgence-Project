if global.readygo=0
{image_index=0; image_speed=0}
else if global.readygo=1
{image_speed=0.3}

if instance_exists(playerparent) && playerparent.sprite_index=playerparent.zstand
{global.canmove=0; playerparent.hsp=0}

if !instance_exists(playerparent) {global.canmove=10}

