fontmmx = font_add_sprite_ext(mmx_font, "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!?<>:;.,",true, 1);
draw_set_colour(c_white);
draw_set_font(fontmmx);
draw_set_halign(fa_left);


draw_set_colour(c_purple);
draw_text(x+22+sep,y+10+ysep,string_hash_to_newline("DISPLAY OPTIONS"));
draw_set_colour(c_white);

draw_text(x+22+sep,y+30+ysep,string_hash_to_newline("FULL SCREEN")); if var_fullscreen=1 {draw_text(x+171+sep,y+30+ysep,string_hash_to_newline("ENABLED"));} else {draw_text(x+171+sep,y+30+ysep,string_hash_to_newline("DISABLED"));}
draw_text(x+22+sep,y+40+ysep,string_hash_to_newline("WINDOW SIZE")); draw_text(x+171+sep,y+40+ysep,string_hash_to_newline(string(global.sizemulti)+"X"));
draw_text(x+22+sep,y+50+ysep,string_hash_to_newline("VSNYC")); draw_text(x+171+sep,y+50,string_hash_to_newline("ENABLED"));

draw_set_colour(c_purple);
draw_text(x+22+sep,y+70+ysep,string_hash_to_newline("INGAME OPTIONS")); 
draw_set_colour(c_white);

draw_text(x+22+sep,y+90+ysep,string_hash_to_newline("PALETTE SWAP")); draw_text(x+171+sep,y+90+ysep,string_hash_to_newline("ENABLED"));
draw_text(x+22+sep,y+100+ysep,string_hash_to_newline("TUTORIAL MODE")); draw_text(x+171+sep,y+100+ysep,string_hash_to_newline("DISABLED"));

draw_text(x+22+sep,y+120+ysep,string_hash_to_newline("SHOW FPS")); if global.var_showfps=1 {draw_text(x+171+sep,y+120+ysep,string_hash_to_newline("ENABLED"));} else {draw_text(x+171+sep,y+120+ysep,string_hash_to_newline("DISABLED"));}

draw_text(x+22+sep,y+130+ysep,string_hash_to_newline("CONFIGURE KEYS"))

draw_text(x+22+sep,y+150+ysep,string_hash_to_newline("DONE"))

if selecter=0
{draw_sprite(cursor_spr,-1,x+sep,y+30+ysep)}
if selecter=1
{draw_sprite(cursor_spr,-1,x+sep,y+40+ysep)}
if selecter=2
{draw_sprite(cursor_spr,-1,x+sep,y+50+ysep)}
if selecter=3
{draw_sprite(cursor_spr,-1,x+sep,y+90+ysep)}
if selecter=4
{draw_sprite(cursor_spr,-1,x+sep,y+100+ysep)}
if selecter=5
{draw_sprite(cursor_spr,-1,x+sep,y+120+ysep)}
if selecter=6
{draw_sprite(cursor_spr,-1,x+sep,y+130+ysep)}
if selecter=7
{draw_sprite(cursor_spr,-1,x+sep,y+150+ysep)}

