image_speed=0.4

image_yscale=0.2
image_alpha=0.5

if hspeed<0 {sprite_index=s_air_effecth}
if hspeed>0 {sprite_index=s_air_effect_h2}
if vspeed<0 {sprite_index=s_air_effectv}
if vspeed>0 {sprite_index=s_air_effectv}
dest=0

