counter_smoke+=0.01

if counter_smoke>1 {instance_create_depth(x+random(16)*dir,y,depth,smokeobj); counter_smoke=0}
if !audio_is_playing(sfx_fire2) {sound_effect=sfx_fire2}

/// COLISIONES
scr_hitbox_saber(0.2)


