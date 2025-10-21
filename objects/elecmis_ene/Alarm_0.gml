vsp=-6
if sprite_index=spr_elecn_ene {sprite_index=spr_elecn_enej}
if sprite_index=spr_elec_ene {sprite_index=spr_elec_enej}
repeat(3) {a=instance_create_depth(x,y,depth,smokeobj); a.hspeed=random_range(-2,2)}

