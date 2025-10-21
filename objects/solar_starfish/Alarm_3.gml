if instance_exists(ob_solarattack) or instance_exists(obj_solarnucleo)
{if sprite_index=spr_solar_stand && intro=0 {sprite_index=spr_solar_jump; vsp=-8}}
else if sprite_index=spr_solar_stand && intro=0
{
	cabom=0
	if pattern=0 {sprite_index=spr_solar_atk2}
	if pattern=1 {sprite_index=spr_solar_jump; vsp=-8}
	if pattern=2 {sprite_index=spr_solar_jump; vsp=-8}
	if pattern=3 {sprite_index=spr_solar_atk2}
	if pattern=4 {sprite_index=spr_solar_jump; vsp=-8}
	if pattern=5 {sprite_index=spr_solar_jump; vsp=-8}
	if pattern=6 && !instance_exists(solar_starfish_clone) {sprite_index=spr_solar_tele; vsp=-2}
	if pattern=7 {sprite_index=spr_solar_atk2}
	if pattern=8 {sprite_index=spr_solar_jump; vsp=-8}
	if pattern=9 {sprite_index=spr_solar_jump; vsp=-8}
	if pattern=10 {sprite_index=spr_solar_beam; instance_create_depth(x,y,depth,solar_beam); instance_create_depth(x,y-60,depth,ob_solarattack)}
	if pattern=11 && !instance_exists(solar_starfish_clone) {sprite_index=spr_solar_tele; vsp=-2}
	if pattern=12 {sprite_index=spr_solar_jump; vsp=-8}
	if pattern=13 {sprite_index=spr_solar_jump; vsp=-8}
	if pattern=14 {sprite_index=spr_solar_beam; instance_create_depth(x,y,depth,solar_beam); instance_create_depth(x,y-60,depth,ob_solarattack)}
	if pattern=15 {sprite_index=spr_solar_jump; vsp=-8; cant_xtreme=0; counter_xtreme=0; created=0}
	if pattern=16 {sprite_index=spr_solar_jump; vsp=-8; cant_xtreme=0; counter_xtreme=0; created=0}
	image_index=0
	pattern+=1
	if pattern>=16 {pattern=0}
}

snd=0

