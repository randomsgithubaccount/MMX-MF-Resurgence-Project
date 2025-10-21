draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,image_alpha)

draw_sprite_ext(s_armen_nohav,0,x,y,1,1,0,c_white,image_alpha)

if global.gheadhave=1 {draw_sprite_ext(s_armen_unused,0,x,y,1,1,0,c_white,image_alpha)}
if global.garmorhave=1 {draw_sprite_ext(s_armen_unused,1,x,y,1,1,0,c_white,image_alpha)}
if global.gbusterhave=1 {draw_sprite_ext(s_armen_unused,2,x,y,1,1,0,c_white,image_alpha)}
if global.gbootshave=1 {draw_sprite_ext(s_armen_unused,3,x,y,1,1,0,c_white,image_alpha)}
if global.theadhave=1 {draw_sprite_ext(s_armen_unused,4,x,y,1,1,0,c_white,image_alpha)}
if global.tarmorhave=1 {draw_sprite_ext(s_armen_unused,5,x,y,1,1,0,c_white,image_alpha)}
if global.tbusterhave=1 {draw_sprite_ext(s_armen_unused,6,x,y,1,1,0,c_white,image_alpha)}
if global.tbootshave=1 {draw_sprite_ext(s_armen_unused,7,x,y,1,1,0,c_white,image_alpha)}

if global.ghead=1 {draw_sprite_ext(s_armen_us,0,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_armormenu_used,0,x,y,1,1,0,c_white,image_alpha)}
if global.garmor=1 {draw_sprite_ext(s_armen_us,1,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_armormenu_used,1,x,y,1,1,0,c_white,image_alpha)}
if global.gbuster=1 {draw_sprite_ext(s_armen_us,2,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_armormenu_used,2,x,y,1,1,0,c_white,image_alpha)}
if global.gboots=1 {draw_sprite_ext(s_armen_us,3,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_armormenu_used,3,x,y,1,1,0,c_white,image_alpha)}
if global.thead=1 {draw_sprite_ext(s_armen_us,4,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_armormenu_used,4,x,y,1,1,0,c_white,image_alpha)}
if global.tarmor=1 {draw_sprite_ext(s_armen_us,5,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_armormenu_used,5,x,y,1,1,0,c_white,image_alpha)}
if global.tbuster=1 {draw_sprite_ext(s_armen_us,6,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_armormenu_used,6,x,y,1,1,0,c_white,image_alpha)}
if global.tboots=1 {draw_sprite_ext(s_armen_us,7,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_armormenu_used,7,x,y,1,1,0,c_white,image_alpha)}

if armenusel=0 {if global.gheadhave=1 {draw_sprite_ext(s_armen_us,0,x,y,1,1,0,c_white,image_alpha)}; draw_sprite_ext(s_armormenusel,0,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_select_armmn,0,x,y,1,1,0,c_white,image_alpha)}
if armenusel=1 {if global.garmorhave=1 {draw_sprite_ext(s_armen_us,1,x,y,1,1,0,c_white,image_alpha)}; draw_sprite_ext(s_armormenusel,1,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_select_armmn,1,x,y,1,1,0,c_white,image_alpha)}
if armenusel=2 {if global.gbusterhave=1 {draw_sprite_ext(s_armen_us,2,x,y,1,1,0,c_white,image_alpha)}; draw_sprite_ext(s_armormenusel,2,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_select_armmn,2,x,y,1,1,0,c_white,image_alpha)}
if armenusel=3 {if global.gbootshave=1 {draw_sprite_ext(s_armen_us,3,x,y,1,1,0,c_white,image_alpha)}; draw_sprite_ext(s_armormenusel,3,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_select_armmn,3,x,y,1,1,0,c_white,image_alpha)}
if armenusel=4 {if global.theadhave=1 {draw_sprite_ext(s_armen_us,4,x,y,1,1,0,c_white,image_alpha)}; draw_sprite_ext(s_armormenusel,4,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_select_armmn,4,x,y,1,1,0,c_white,image_alpha)}
if armenusel=5 {if global.tarmorhave=1 {draw_sprite_ext(s_armen_us,5,x,y,1,1,0,c_white,image_alpha)}; draw_sprite_ext(s_armormenusel,5,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_select_armmn,5,x,y,1,1,0,c_white,image_alpha)}
if armenusel=6 {if global.tbusterhave=1 {draw_sprite_ext(s_armen_us,6,x,y,1,1,0,c_white,image_alpha)}; draw_sprite_ext(s_armormenusel,6,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_select_armmn,6,x,y,1,1,0,c_white,image_alpha)}
if armenusel=7 {if global.tbootshave=1 {draw_sprite_ext(s_armen_us,7,x,y,1,1,0,c_white,image_alpha)}; draw_sprite_ext(s_armormenusel,7,x,y,1,1,0,c_white,image_alpha); draw_sprite_ext(s_select_armmn,7,x,y,1,1,0,c_white,image_alpha)}


