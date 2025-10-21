draw_set_alpha(image_alpha)

draw_sprite_ext(sprite_index,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1,1,0,c_white,image_alpha)

if cfg=1 
{
fontmmx = font_add_sprite_ext(mmx_font, "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!?<>:;.,",true, 0);
draw_set_colour(c_white);
draw_set_font(fontmmx);
draw_set_halign(fa_left);

draw_sprite_ext(sprite_index,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1,1,0,c_white,image_alpha)

/// MUSIC VOLUME

i=1
sep=0
mx=__view_get( e__VW.XView, 0 )+35
my=__view_get( e__VW.YView, 0 )+40
draw_set_alpha(0.6)
draw_sprite_ext(spr_volume_back,0,mx,my,image_xscale,image_yscale,0,c_white,0.6)
draw_text(mx,my-12,string_hash_to_newline("music volume"))
draw_set_alpha(image_alpha)
if selecter=0 {if (counter_parpadeo % 4) {draw_sprite_ext(spr_volume_back,0,mx,my,image_xscale,image_yscale,0,c_white,1); draw_text(mx,my-12,string_hash_to_newline("music volume"))}}

repeat(20) 
{
if (music_volume*20)>=i {draw_sprite_ext(spr_green_rbar,0,mx+i+sep,my,image_xscale,image_yscale,0,c_white,1)}
else {draw_sprite_ext(spr_green_rbar,1,mx+i+sep,my,image_xscale,image_yscale,0,c_white,1)}
i+=1
sep+=3
}

/// EFFECT VOLUME

i=1
sep=0
mx=__view_get( e__VW.XView, 0 )+37
my=__view_get( e__VW.YView, 0 )+62
draw_set_alpha(0.6)
draw_sprite_ext(spr_volume_back,0,mx,my,image_xscale,image_yscale,0,c_white,0.6)
draw_text(mx-5,my-12,string_hash_to_newline("effects volume"))
draw_set_alpha(image_alpha)

if selecter=1 {if (counter_parpadeo % 4) {draw_sprite_ext(spr_volume_back,0,mx,my,image_xscale,image_yscale,0,c_white,1); draw_text(mx-5,my-12,string_hash_to_newline("effects volume"))}}

repeat(20)
{
if (effect_volume*20)>=i {draw_sprite_ext(spr_green_rbar,0,mx+i+sep,my,image_xscale,image_yscale,0,c_white,1)}
else {draw_sprite_ext(spr_green_rbar,1,mx+i+sep,my,image_xscale,image_yscale,0,c_white,1)}
i+=1
sep+=3
}


/// OPTIONS
draw_set_halign(fa_left);

draw_set_colour(c_purple);
draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+80+ysep,string_hash_to_newline("DISPLAY"));
draw_set_colour(c_white);

draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+100,string_hash_to_newline("FULLSCREEN")); if var_fullscreen=1 {draw_text(__view_get( e__VW.XView, 0 )+105,__view_get( e__VW.YView, 0 )+100,string_hash_to_newline("ON"));} else {draw_text(__view_get( e__VW.XView, 0 )+105,__view_get( e__VW.YView, 0 )+100,string_hash_to_newline("OFF"));}
draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+110,string_hash_to_newline("WINDOW SIZE")); draw_text(__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+110,string_hash_to_newline(string(global.sizemulti)+"X"));
draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+120,string_hash_to_newline("VSNYC")); draw_text(__view_get( e__VW.XView, 0 )+105,__view_get( e__VW.YView, 0 )+120,string_hash_to_newline("ON"));

draw_set_colour(c_purple);
draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+140,string_hash_to_newline("INGAME OPTION"));
draw_set_colour(c_white);

draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+160,string_hash_to_newline("SHOW FPS")); if global.var_showfps=1 {draw_text(__view_get( e__VW.XView, 0 )+105,__view_get( e__VW.YView, 0 )+160,string_hash_to_newline("ON"));} else {draw_text(__view_get( e__VW.XView, 0 )+105,__view_get( e__VW.YView, 0 )+160,string_hash_to_newline("OFF"));}

draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+170,string_hash_to_newline("CONFIGURE KEYS"))

draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+180,string_hash_to_newline("DONE"))
}

if cfg=0 
{
draw_sprite_ext(sprite_index,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1,1,0,c_white,image_alpha)

if global.char=0 {draw_sprite_ext(spr_xstand,0,__view_get( e__VW.XView, 0 )+276,__view_get( e__VW.YView, 0 )+133,-1,1,0,c_white,image_alpha)}
if global.char=1 {draw_sprite_ext(s_zstand,0,__view_get( e__VW.XView, 0 )+276,__view_get( e__VW.YView, 0 )+133,-1,1,0,c_white,image_alpha)}
if global.char=2 {draw_sprite_ext(s_axl_stand,0,__view_get( e__VW.XView, 0 )+276,__view_get( e__VW.YView, 0 )+133,-1,1,0,c_white,image_alpha)}

//Life Bars
/*
scrDrawHealth(s_lbarfondox, barMid, barTop, global.xhp, hMax/2, view_xview+160, view_yview+70)
scrDrawHealth(s_lbarfondoz, barMid, barTop, global.xhp, hMax/2, view_xview+160, view_yview+100)
scrDrawHealth(s_lbarfondoa, barMid, barTop, global.xhp, hMax/2, view_xview+160, view_yview+130)
scrDrawEnergy(s_lbarfondoE, barMidE, barTopE, global.energy[global.mavskills], eMax/2, view_xview+170, view_yview+81)
scrDrawEnergy(s_lbarfondoE, barMidE, barTopE, global.energy[global.mavskills], eMax/2, view_xview+170, view_yview+111)
scrDrawEnergy(s_lbarfondoE, barMidE, barTopE, global.energy[global.mavskills], eMax/2, view_xview+170, view_yview+141)

// Maverick Bars
/*
scrDrawEnergym(barini_pause, barmid_pause, bartop_pause, global.energy[0], eMax/2, view_xview+40, view_yview+30)
scrDrawEnergym(barini_pause, barmid_pause, bartop_pause, global.energy[1], eMax/2, view_xview+40, view_yview+50)
scrDrawEnergym(barini_pause, barmid_pause, bartop_pause, global.energy[2], eMax/2, view_xview+40, view_yview+70)
scrDrawEnergym(barini_pause, barmid_pause, bartop_pause, global.energy[3], eMax/2, view_xview+40, view_yview+90)
scrDrawEnergym(barini_pause, barmid_pause, bartop_pause, global.energy[4], eMax/2, view_xview+40, view_yview+110)
scrDrawEnergym(barini_pause, barmid_pause, bartop_pause, global.energy[5], eMax/2, view_xview+40, view_yview+130)
scrDrawEnergym(barini_pause, barmid_pause, bartop_pause, global.energy[6], eMax/2, view_xview+40, view_yview+150)
scrDrawEnergym(barini_pause, barmid_pause, bartop_pause, global.energy[6], eMax/2, view_xview+40, view_yview+170)
scrDrawEnergym(barini_pause, barmid_pause, bartop_pause, global.energy[6], eMax/2, view_xview+40, view_yview+190)
*/

s=0
xmain=__view_get( e__VW.XView, 0 )+57
ymain=__view_get( e__VW.YView, 0 )+28
scrDrawEnergym(barini_pause, barmid_pause, bartop_pause, global.xhp, eMax/2, xmain, ymain+(21*s))

s=1
repeat(8)
{
xmain=__view_get( e__VW.XView, 0 )+57
ymain=__view_get( e__VW.YView, 0 )+28
if global.x_skill[s]=1 
{
scrDrawEnergym(barini_pause, barmid_pause, bartop_pause, global.energy[s], eMax/2, xmain, ymain+(21*s))
}
s++
}


//money
fontmmx = font_add_sprite_ext(mmx_font, "1234567890abcdefghijklmnopqrstuvwxyz!)<>ABCDEFGHIJKLMNOPQRSTUVWXYZ:;,.",true, 1);
draw_set_colour(c_white);
draw_set_font(fontmmx);
draw_set_halign(fa_middle)
draw_text(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+42,string_hash_to_newline(global.metalmoney))

tankx1=__view_get( e__VW.XView, 0 )+156
tankx2=__view_get( e__VW.XView, 0 )+177
tanky1=__view_get( e__VW.YView, 0 )+171
tanky2=__view_get( e__VW.YView, 0 )+191

stankx1=__view_get( e__VW.XView, 0 )+208
stankx2=__view_get( e__VW.XView, 0 )+229
stanky1=__view_get( e__VW.YView, 0 )+171
stanky2=__view_get( e__VW.YView, 0 )+191

// Sub Tanks
draw_sprite_ext(spr_subtank,global.subtank[0], tankx1, tanky1,1,1,0,c_white,image_alpha)
draw_sprite_ext(spr_subtank,global.subtank[1], tankx2, tanky1,1,1,0,c_white,image_alpha)
draw_sprite_ext(spr_subtank,global.subtank[2], tankx1, tanky2,1,1,0,c_white,image_alpha)
draw_sprite_ext(spr_subtank,global.subtank[3], tankx2, tanky2,1,1,0,c_white,image_alpha)

// Energy Tanks
draw_sprite_ext(spr_etanks,global.etank[0], stankx1, stanky1,1,1,0,c_white,image_alpha)
draw_sprite_ext(spr_etanks,global.etank[1], stankx2, stanky1,1,1,0,c_white,image_alpha)
draw_sprite_ext(spr_etanks,global.etank[2], stankx1, stanky2,1,1,0,c_white,image_alpha)
draw_sprite_ext(spr_etanks,global.etank[3], stankx2, stanky2,1,1,0,c_white,image_alpha)

if (counter_parpadeo % 4) 
{
draw_set_blend_mode(bm_add)
if selecter=10 {draw_sprite_ext(spr_subtank,global.subtank[0], tankx1, tanky1,1,1,0,c_white,image_alpha)}
if selecter=11 {draw_sprite_ext(spr_subtank,global.subtank[1], tankx2, tanky1,1,1,0,c_white,image_alpha)}
if selecter=12 {draw_sprite_ext(spr_subtank,global.subtank[2], tankx1, tanky2,1,1,0,c_white,image_alpha)}
if selecter=13 {draw_sprite_ext(spr_subtank,global.subtank[3], tankx2, tanky2,1,1,0,c_white,image_alpha)}

if selecter=14 {draw_sprite_ext(spr_etanks,global.etank[0], stankx1, stanky1,1,1,0,c_white,image_alpha)}
if selecter=15 {draw_sprite_ext(spr_etanks,global.etank[1], stankx2, stanky1,1,1,0,c_white,image_alpha)}
if selecter=16 {draw_sprite_ext(spr_etanks,global.etank[2], stankx1, stanky2,1,1,0,c_white,image_alpha)}
if selecter=17 {draw_sprite_ext(spr_etanks,global.etank[3], stankx2, stanky2,1,1,0,c_white,image_alpha)}
draw_set_blend_mode(bm_normal)
}

s=0
xmain=__view_get( e__VW.XView, 0 )+37
ymain=__view_get( e__VW.YView, 0 )+20
if global.char=0 {draw_sprite_ext(scr_pause_icons_x,s,xmain,ymain+(21*s),1,1,0,c_white,image_alpha)}
if global.char=1 {draw_sprite_ext(scr_pause_icons_z,s,xmain,ymain+(21*s),1,1,0,c_white,image_alpha)}
if global.char=2 {draw_sprite_ext(scr_pause_icons_x,s,xmain,ymain+(21*s),1,1,0,c_white,image_alpha)}
s=1
repeat(8)
{
xmain=__view_get( e__VW.XView, 0 )+37
ymain=__view_get( e__VW.YView, 0 )+20
if global.x_skill[s]=1 
{
if global.char=0 {draw_sprite_ext(scr_pause_icons_x,s,xmain,ymain+(21*s),1,1,0,c_white,image_alpha)}
if global.char=1 {draw_sprite_ext(scr_pause_icons_z,s,xmain,ymain+(21*s),1,1,0,c_white,image_alpha)}
if global.char=2 {draw_sprite_ext(scr_pause_icons_x,s,xmain,ymain+(21*s),1,1,0,c_white,image_alpha)}
if (counter_parpadeo % 4) 
{if selecter=s {draw_sprite_ext(spr_pause_selecters,0,xmain,ymain+(21*s),1,1,0,c_white,image_alpha)}}
}
s++
}
}
draw_set_alpha(1)

/* */
/*  */
