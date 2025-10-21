if sprite_index=spr_ahera_intro {sprite_index=spr_ahera_stand; image_index=0; instance_create_depth(x,y,depth,bossbar);}
if sprite_index=spr_ahera_stand {image_index=0}
if sprite_index=spr_ahera_app {sprite_index=spr_ahera_stand; image_index=0}
if sprite_index=spr_ahera_protect {image_index=0; if alarm[1]<0{alarm[1]=100}}
if sprite_index=spr_ahera_tele 
{
; sound_effect=sound_helperout
spotx=min(spotx,right)
spotx=max(spotx,left)

spoty=max(spoty,top+20)
spoty=min(spoty,bottom)

x=spotx; y=spoty; xx=x; yy=y; sprite_index=spr_ahera_app; image_index=0
}

if sprite_index=spr_ahera_atk2 {image_index=8}

