if hspeed=0 && vspeed=6 {image_index=0}
if hspeed=0 && vspeed=-6 {image_index=0}

if hspeed=6 && vspeed=-6 {image_index=2}
if hspeed=6 && vspeed=6 {image_index=3}

if hspeed=-6 && vspeed=-6 {image_index=2}
if hspeed=-6 && vspeed=6 {image_index=3}

if hspeed=6 && vspeed=0 {image_index=1}
if hspeed=-6 && vspeed=0 {image_index=1}

if collision_point(x,y,parSolid,true,true) {instance_destroy()}

scr_hitbox_buster(0.5)

