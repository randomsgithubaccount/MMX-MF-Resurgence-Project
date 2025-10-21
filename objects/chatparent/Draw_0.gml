ysize=80
chatsize=ceil(lerp(chatsize,__view_get( e__VW.XView, 0 )+352-outline,0.1))

draw_set_color(c_black)
draw_rectangle(__view_get( e__VW.XView, 0 )+outline,__view_get( e__VW.YView, 0 )+outline,chatsize,__view_get( e__VW.YView, 0 )+outline+ysize,false);
draw_set_color(c_white)

fontmmx = font_add_sprite_ext(mmx_font, "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!?<>:;.,’",true, 1);
draw_set_colour(c_white);
draw_set_font(fontmmx);
draw_set_halign(fa_left);

/// POSITIONS 
mugshot_x=__view_get( e__VW.XView, 0 )+352-sprite_get_width(mugsprite)-(outline*1.5)
mugshot_y=__view_get( e__VW.YView, 0 )+(outline*1.5)

mugshot_x2=__view_get( e__VW.XView, 0 )+(outline*1.5)
mugshot_y2=__view_get( e__VW.YView, 0 )+(outline*1.5)

letters_x=__view_get( e__VW.XView, 0 )+(outline*1.5)+sprite_get_width(mugsprite)+8
letters_y=__view_get( e__VW.YView, 0 )+(outline*1.5)

if chatsize=round(__view_get( e__VW.XView, 0 )+352-outline)
{
/// MUGSHOT BACKGROUND
draw_sprite(spr_mugshot_lback,animation,mugshot_x,mugshot_y)
draw_sprite(spr_mugshot_rback,animation,mugshot_x2,mugshot_y2)

/// MUGSHOT NORMAL
draw_sprite(mugsprite_mav,image_index,mugshot_x,mugshot_y)
draw_sprite(mugsprite_char,image_index,mugshot_x2,mugshot_y2)
}

/// LETTERS
scr_txt_dinamic(letters_x,letters_y,string_copy(currentstr,1,pos));

