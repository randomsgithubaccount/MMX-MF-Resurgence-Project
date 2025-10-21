fontmmx = font_add_sprite_ext(mmx_font, "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!?<>:;.,",true, 1);
draw_set_colour(c_white);
draw_set_font(fontmmx);
draw_set_halign(fa_left);

draw_set_colour(c_purple);
draw_text(x+22+sep,y+10+ysep,string_hash_to_newline("CONFIGURE KEYS"));
draw_set_colour(c_white);

draw_text(x+22+sep,y+30+ysep,string_hash_to_newline("UP"))
draw_text(x+22+sep,y+40+ysep,string_hash_to_newline("DOWN"))
draw_text(x+22+sep,y+50+ysep,string_hash_to_newline("LEFT"))
draw_text(x+22+sep,y+60+ysep,string_hash_to_newline("RIGHT"))

draw_text(x+22+sep,y+70+ysep,string_hash_to_newline("SHOT"))
draw_text(x+22+sep,y+80+ysep,string_hash_to_newline("JUMP"))
draw_text(x+22+sep,y+90+ysep,string_hash_to_newline("DASH"))
draw_text(x+22+sep,y+100+ysep,string_hash_to_newline("SPECIAL"))
draw_text(x+22+sep,y+110+ysep,string_hash_to_newline("CHANGE"))

draw_text(x+22+sep,y+120+ysep,string_hash_to_newline("PAUSE"))
draw_text(x+22+sep,y+130+ysep,string_hash_to_newline("SELECT"))

draw_text(x+22+sep,y+150+ysep,string_hash_to_newline("DEFAULT [ENTER]"))
draw_text(x+22+sep,y+160+ysep,string_hash_to_newline("DONE"))

draw_text(x+20,y+20,string_hash_to_newline(string(joystick_pov(0))))

if locked=1
{
if selecter=0 {draw_set_colour(c_green); draw_text(x+171+sep,y+30+ysep,string_hash_to_newline("PRESS")); draw_set_colour(c_white)}
else if selecter=1 {draw_set_colour(c_green); draw_text(x+171+sep,y+40+ysep,string_hash_to_newline("PRESS")); draw_set_colour(c_white)}
else if selecter=2 {draw_set_colour(c_green); draw_text(x+171+sep,y+50+ysep,string_hash_to_newline("PRESS")); draw_set_colour(c_white)}
else if selecter=3 {draw_set_colour(c_green); draw_text(x+171+sep,y+60+ysep,string_hash_to_newline("PRESS")); draw_set_colour(c_white)}
else if selecter=4 {draw_set_colour(c_green); draw_text(x+171+sep,y+70+ysep,string_hash_to_newline("PRESS")); draw_set_colour(c_white)}
else if selecter=5 {draw_set_colour(c_green); draw_text(x+171+sep,y+80+ysep,string_hash_to_newline("PRESS")); draw_set_colour(c_white)}
else if selecter=6 {draw_set_colour(c_green); draw_text(x+171+sep,y+90+ysep,string_hash_to_newline("PRESS")); draw_set_colour(c_white)}
else if selecter=7 {draw_set_colour(c_green); draw_text(x+171+sep,y+100+ysep,string_hash_to_newline("PRESS")); draw_set_colour(c_white)}
else if selecter=8 {draw_set_colour(c_green); draw_text(x+171+sep,y+110+ysep,string_hash_to_newline("PRESS")); draw_set_colour(c_white)}
else if selecter=9 {draw_set_colour(c_green); draw_text(x+171+sep,y+120+ysep,string_hash_to_newline("PRESS")); draw_set_colour(c_white)}
else if selecter=10 {draw_set_colour(c_green); draw_text(x+171+sep,y+130+ysep,string_hash_to_newline("PRESS")); draw_set_colour(c_white)}
}
else
{
if gamepad_is_connected(0)
{
draw_text(x+171+sep,y+30+ysep,string_hash_to_newline("STICK"))
draw_text(x+171+sep,y+40+ysep,string_hash_to_newline("STICK"))
draw_text(x+171+sep,y+50+ysep,string_hash_to_newline("STICK"))
draw_text(x+171+sep,y+60+ysep,string_hash_to_newline("STICK"))

draw_text(x+171+sep,y+70+ysep,string_hash_to_newline(string(global.op_gamepad_shot)))
draw_text(x+171+sep,y+80+ysep,string_hash_to_newline(string(global.op_gamepad_jump)))
draw_text(x+171+sep,y+90+ysep,string_hash_to_newline(string(global.op_gamepad_dash)))
draw_text(x+171+sep,y+100+ysep,string_hash_to_newline(string(global.op_gamepad_special)))
draw_text(x+171+sep,y+110+ysep,string_hash_to_newline(string(global.op_gamepad_changes)))

draw_text(x+171+sep,y+120+ysep,string_hash_to_newline(string(global.op_gamepad_pause)))
draw_text(x+171+sep,y+130+ysep,string_hash_to_newline(string(global.op_gamepad_selec)))
}
else if joystick_exists(0)
{
draw_text(x+171+sep,y+30+ysep,string_hash_to_newline("STICK"))
draw_text(x+171+sep,y+40+ysep,string_hash_to_newline("STICK"))
draw_text(x+171+sep,y+50+ysep,string_hash_to_newline("STICK"))
draw_text(x+171+sep,y+60+ysep,string_hash_to_newline("STICK"))

draw_text(x+171+sep,y+70+ysep,string_hash_to_newline(string(global.op_dinput_shot)))
draw_text(x+171+sep,y+80+ysep,string_hash_to_newline(string(global.op_dinput_jump)))
draw_text(x+171+sep,y+90+ysep,string_hash_to_newline(string(global.op_dinput_dash)))
draw_text(x+171+sep,y+100+ysep,string_hash_to_newline(string(global.op_dinput_special)))
draw_text(x+171+sep,y+110+ysep,string_hash_to_newline(string(global.op_dinput_changes)))

draw_text(x+171+sep,y+120+ysep,string_hash_to_newline(string(global.op_dinput_pause)))
draw_text(x+171+sep,y+130+ysep,string_hash_to_newline(string(global.op_dinput_selec)))
}
else
{
keymapping();
draw_text(x+171+sep,y+30+ysep,string_hash_to_newline(string(global.asc_def[global.op_keyboard_up])))
draw_text(x+171+sep,y+40+ysep,string_hash_to_newline(string(global.asc_def[global.op_keyboard_down])))
draw_text(x+171+sep,y+50+ysep,string_hash_to_newline(string(global.asc_def[global.op_keyboard_left])))
draw_text(x+171+sep,y+60+ysep,string_hash_to_newline(string(global.asc_def[global.op_keyboard_right])))

draw_text(x+171+sep,y+70+ysep,string_hash_to_newline(string(global.asc_def[global.op_keyboard_shot])))
draw_text(x+171+sep,y+80+ysep,string_hash_to_newline(string(global.asc_def[global.op_keyboard_jump])))
draw_text(x+171+sep,y+90+ysep,string_hash_to_newline(string(global.asc_def[global.op_keyboard_dash])))
draw_text(x+171+sep,y+100+ysep,string_hash_to_newline(string(global.asc_def[global.op_keyboard_special])))
draw_text(x+171+sep,y+110+ysep,string_hash_to_newline(string(global.asc_def[global.op_keyboard_changes])))

draw_text(x+171+sep,y+120+ysep,string_hash_to_newline(string(global.asc_def[global.op_keyboard_pause])))
draw_text(x+171+sep,y+130+ysep,string_hash_to_newline(string(global.asc_def[global.op_keyboard_selec])))
}
}

if selecter=0
{draw_sprite(cursor_spr,-1,x+sep,y+30+ysep)}
if selecter=1
{draw_sprite(cursor_spr,-1,x+sep,y+40+ysep)}
if selecter=2
{draw_sprite(cursor_spr,-1,x+sep,y+50+ysep)}
if selecter=3
{draw_sprite(cursor_spr,-1,x+sep,y+60+ysep)}
if selecter=4
{draw_sprite(cursor_spr,-1,x+sep,y+70+ysep)}
if selecter=5
{draw_sprite(cursor_spr,-1,x+sep,y+80+ysep)}
if selecter=6
{draw_sprite(cursor_spr,-1,x+sep,y+90+ysep)}
if selecter=7
{draw_sprite(cursor_spr,-1,x+sep,y+100+ysep)}
if selecter=8
{draw_sprite(cursor_spr,-1,x+sep,y+110+ysep)}
if selecter=9
{draw_sprite(cursor_spr,-1,x+sep,y+120+ysep)}
if selecter=10
{draw_sprite(cursor_spr,-1,x+sep,y+130+ysep)}
if selecter=11
{draw_sprite(cursor_spr,-1,x+sep,y+150+ysep)}
if selecter=12
{draw_sprite(cursor_spr,-1,x+sep,y+160+ysep)}

