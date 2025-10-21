

if sprite_index=spr_solar_intro {draw_sprite_ext(spr_solar_intro_effect2,image_index,x,y-95,dir,1,0,c_white,1)}
if sprite_index=spr_solar_intro {draw_sprite_ext(spr_solar_intro_effect2,image_index,x,y+90,dir,1,0,c_white,1)}

my_pal_sprite=spr_solar_palette

pal_swap_set(my_pal_sprite,current_pal,false);

script_execute(boss_hit,0,0,0,0,0);

if sprite_index=spr_solar_xtreme
{
	if image_index>4 {draw_sprite_ext(spr_solar_star,0,x,y-27,image_xscale,image_yscale,direction,c_white,1)}
}

pal_swap_reset();