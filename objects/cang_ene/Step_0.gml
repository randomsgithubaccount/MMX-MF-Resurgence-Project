hit=y-10

scr_ene_motion()

if distance_to_object(playerparent)<60 && sprite_index=spr_cang_ene {sprite_index=spr_cang_atk; image_index=0; status=1}
if distance_to_object(playerparent)>60 && sprite_index=spr_cang_atk {sprite_index=spr_cang_ene; status=0}

if alarm[0]<1 && status=0 {alarm[0]=80}

if sprite_index=spr_cang_ene {image_speed=0.3}
if sprite_index=spr_cang_run {hsp=0.5*der; image_speed=0.3} else {hsp=0}
if sprite_index=spr_cang_atk {mask_index=spr_cang_atk; image_speed=0.3} else {mask_index=spr_cang_mask}

