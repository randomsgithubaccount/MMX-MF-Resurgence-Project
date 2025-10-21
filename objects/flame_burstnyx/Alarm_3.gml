if sprite_index=spr_flambstand && intro=0
{
if pattern=0 {sprite_index=spr_flambatk1 hado=0}
if pattern=1 {sprite_index=spr_flambhado; hado=0}
if pattern=2 {sprite_index=spr_flambdash; hado=0; sound_effect=sfx_fire4 }
if pattern=3 {sprite_index=spr_flambatk1; hado=0}
if pattern=4 {sprite_index=spr_flambhado; hado=0}
if pattern=5 {sprite_index=spr_flambpreatr; sound_effect=sfx_fire5 }
if pattern=6 {sprite_index=spr_flambatk1; hado=0}
if pattern=7 {sprite_index=spr_flambhado; hado=0}
if pattern=8 {sprite_index=spr_flambdash; hado=0; sound_effect=sfx_fire4 }
if pattern=9 {sprite_index=spr_flambpreatr; sound_effect=sfx_fire5 }
if pattern=10 {sprite_index=spr_premeteo;}
if pattern=11 {sprite_index=spr_flambatk1; hado=0}
if pattern=12 {sprite_index=spr_flambhado; hado=0}
if pattern=13 {sprite_index=spr_flambdash; hado=0; sound_effect=sfx_fire4 }
if pattern=14 {sprite_index=spr_flambatk1; hado=0}
if pattern=15 {sprite_index=spr_flambhado; hado=0}
if pattern=16 {sprite_index=spr_flambdash; hado=0; sound_effect=sfx_fire4 }

image_index=0
pattern+=1
if pattern>=16 {pattern=0}
}


