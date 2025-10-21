spotx=__view_get( e__VW.XView, 0 )+325
spoty=__view_get( e__VW.YView, 0 )+20

if global.bosshp>0
{
i=-1
sep=0

repeat(max_life)
{
if (global.bosshp*-1)<=i {draw_sprite_ext(spr_bbar_mid,1,spotx+i+sep,spoty,image_xscale,image_yscale,0,c_white,1)}
else {draw_sprite_ext(spr_bbar_mid,0,spotx+i+sep,spoty,image_xscale,image_yscale,0,c_white,1)}
i-=1
sep-=1
}

j=-1
sep2=0

repeat(max_ene)
{
if (energy*-1)<=j {draw_sprite_ext(barMidE2,1,spotx+j+sep2-8,spoty+11,-1,image_yscale,0,c_white,1)}
else {draw_sprite_ext(barMidE2,0,spotx+j+sep2-8,spoty+11,-1,image_yscale,0,c_white,1)}
j-=1
sep2-=1
}
draw_sprite_ext(barTopE,0,spotx+j+sep2-12,spoty+11,-1,image_yscale,0,c_white,1)

draw_sprite_ext(barTop,0,spotx+i+sep-5,spoty,-1,image_yscale,0,c_white,1)
draw_sprite_ext(spr_bbar_base,0,spotx-1,spoty-1,image_xscale,image_yscale,0,c_white,1)
}

