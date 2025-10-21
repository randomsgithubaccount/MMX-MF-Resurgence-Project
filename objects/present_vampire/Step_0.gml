if image_alpha<1 && go=1 {image_alpha+=0.04}
if image_alpha>=1 {image_speed=0.3}

if sprite_index=spr_vampire_thunder
{
	if image_index>3 && repeats<4 {image_index=0; repeats+=1}
}