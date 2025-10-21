if sprite_index=sb_volt
{
sprite_index=sb
}

if sprite_index=sb_up
{sprite_index=sb}

if sprite_index=spr_bike_jump
{
if free=false {sprite_index=sb; sound_effect=SFX_PARTS}
if free=true {image_index=5}
}

