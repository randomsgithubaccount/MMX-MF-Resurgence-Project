if sprite_index=spr_tecno_vile {sprite_index=spr_tecno_vile_jump; image_index=0; hsp=4*image_xscale; vsp=-7.2; y-=5}
if sprite_index=spr_tecno_penguin {sprite_index=spr_tecno_penguin_at; image_index=0; alarm[1]=100}
if sprite_index=spr_tecno_magma {sprite_index=spr_tecno_magma_hado; image_index=0; alarm[1]=100}
if sprite_index=spr_tecno_eagle {alarm[1]=200}
if sprite_index=spr_tecno_armadillo {alarm[1]=200; sprite_index=spr_tecno_armadillo_r; image_index=0; hsp=-4*(dir); vsp=-4}

if sprite_index=spr_tecno_doppler 
{
if instance_exists(ahera_block) {sprite_index=spr_tecno_doppler_grv; image_index=0}
else {sprite_index=spr_tecno_doppler_dash; image_index=0}
}
moved=1

