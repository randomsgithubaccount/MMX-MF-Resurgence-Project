draw_set_halign(fa_center);
fontmmx = font_add_sprite_ext(mmx_font, "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!?<>:;.,",true, 1);
draw_set_colour(c_white);
draw_set_font(fontmmx);

draw_set_alpha(0.5)
draw_sprite(s_logoloading_mf,0,__view_get( e__VW.XView, 0 )+(VIEWSIZE_X/2),__view_get( e__VW.YView, 0 )+(VIEWSIZE_Y/2)) 
draw_set_alpha(1)

if roomchoosed=0
{
if keyboard_check_pressed(vk_down) {if selecter<totalrooms {selecter+=1; sound_effect=snd_select}}
if keyboard_check_pressed(vk_up) {if selecter>1 {selecter-=1; sound_effect=snd_select}}

i=0
j=0

while room_exists(i)
{
if i>0
{
if selecter=i
{draw_text(VIEWSIZE_X/2,(60-(selecter*4))+j,string_hash_to_newline(string(index_room[i])))} else
{draw_set_alpha(0.5); draw_text(VIEWSIZE_X/2,(60-(selecter*4))+j,string_hash_to_newline(string(index_room[i]))); draw_set_alpha(1)}
}
i++ 
j+=8
}
}

if roomchoosed=1
{
if keyboard_check_pressed(vk_down) {if selecter2<3 {selecter2+=1; sound_effect=snd_select}}
if keyboard_check_pressed(vk_up) {if selecter2>0 {selecter2-=1; sound_effect=snd_select}}

i=0
j=0

repeat(4)
{
if selecter2=i
{draw_text(VIEWSIZE_X/2,(60-(selecter2*4))+j,string_hash_to_newline(string(character[i])))} else
{draw_set_alpha(0.5); draw_text(VIEWSIZE_X/2,(60-(selecter2*4))+j,string_hash_to_newline(string(character[i]))); draw_set_alpha(1)}
i++ 
j+=8
}
}


