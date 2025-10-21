if debuger=true
{
fontmmx = font_add_sprite_ext(mmx_font, "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!?<>:;.,",true, 1);
draw_set_colour(c_white);
draw_set_font(fontmmx);
draw_set_halign(fa_left);

h=0
str=8
draw_text(16,16,string_hash_to_newline("DEBUG DATA"))
h++
if instance_exists(playerparent)
{
if instance_exists(Zero) {splayer="Zero"}
else if instance_exists(MegamanX) {splayer="X"}
else if instance_exists(Axl) {splayer="Axl"}
else {splayer="None"}

draw_text(16,16+str*h,string_hash_to_newline("Player: " + string(splayer) + " free: " + string(playerparent.free)))
h++
draw_text(16,16+str*h,string_hash_to_newline("hsp: " + string(playerparent.hsp)))
draw_text(100,16+str*h,string_hash_to_newline("vsp: " + string(playerparent.vsp)))
h++
draw_text(16,16+str*h,string_hash_to_newline("fric_x: " + string(playerparent.fric)))
draw_text(100,16+str*h,string_hash_to_newline("fric_y: " + string(playerparent.vfric)))
h++
}

draw_text(16,16+str*h,string_hash_to_newline("xcharge: " + string(global.xcharge)))
h++
draw_text(16,16+str*h,string_hash_to_newline("hp: " + string(global.xhp) + " energy: " + string(global.energy[global.mavskills])))
h++
draw_text(16,16+str*h,string_hash_to_newline("metals: " + string(global.metalmoney)))
h++
draw_text(16,16+str*h,string_hash_to_newline("room: " + string(room_get_name(room))))
h++
draw_text(16,16+str*h,string_hash_to_newline("darkness: " + string(darkness)))
h++
draw_text(16,16+str*h,string_hash_to_newline("enemies: " + string(instance_number(parenemy))))
h++

}

