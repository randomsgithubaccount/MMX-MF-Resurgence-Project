draw_sprite(spr_eff_gburst,spr,x,bbox_bottom)

if hsp>0 
{draw_sprite_ext(spr_eff_gburst,spr+2,bbox_left,y+8,0.5,1,-90,c_white,1)}
if hsp<0 
{draw_sprite_ext(spr_eff_gburst,spr+2,bbox_right,y+8,0.5,1,90,c_white,1)}
draw_self()


