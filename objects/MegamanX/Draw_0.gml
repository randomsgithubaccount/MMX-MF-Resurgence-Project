draw_character_from_surface(x+xx+(subVelx)+sbx,y+(subVely)+sby,c_white,1);

if brchar=1
{
	if global.gbuster=0 && global.tbuster=0
	{
		draw_set_blend_mode(bm_add)
		repeat(2) {draw_character_from_surface(x+xx+(subVelx)+sbx,y+(subVely)+sby,c_aqua,1);}
	}
	if global.gbuster=1 && global.tbuster=0
	{
		if global.xcharge>140
		{
			draw_set_blend_mode(bm_add)
			repeat(4) {draw_character_from_surface(x+xx+(subVelx)+sbx,y+(subVely)+sby,c_yellow,1);}
		}
		else if global.xcharge>=80
		{
			draw_set_blend_mode(bm_add)
			repeat(2) {draw_character_from_surface(x+xx+(subVelx)+sbx,y+(subVely)+sby,c_yellow,1);}
		}
		else 
		{
			draw_set_blend_mode(bm_add)
			repeat(2) {draw_character_from_surface(x+xx+(subVelx)+sbx,y+(subVely)+sby,c_aqua,1);}
		}
		
	}
	if global.gbuster=0 && global.tbuster=1
	{
		draw_set_blend_mode(bm_add)
		repeat(2) {draw_character_from_surface(x+xx+(subVelx)+sbx,y+(subVely)+sby,c_aqua,1);}
	}

}

d3d_set_fog(1,c_lime,0,0)
draw_character_from_surface(x+xx+(subVelx)+sbx,y+(subVely)+sby,c_lime,alpha_poison/2);
d3d_set_fog(0,c_lime,0,0)
draw_set_blend_mode(bm_normal)

if global.show_mask=true
{draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,0.5)}

sbx=0
sby=0

