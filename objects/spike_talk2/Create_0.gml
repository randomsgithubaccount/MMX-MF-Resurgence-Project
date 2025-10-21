with (playerparent) {sprite_index=zstand}
global.canmove=0

spr_mugshot_habla=s_mug_spike
spr_mugshot=s_mug_spikep
mugsprite_mav=spr_mugshot
mugsprite=spr_xmugshot_normal

/// MAVERICK
str[1] = "USTEDES HUNTERS HAN CAUSADO MUCHO RUIDO POR AQUI, SON UNA MOLESTIA PARA MI NEGOCIO"
str[2] = "DEBE SER EL PRECIO DE HACER UN GRAN NEGOCIO CON UN HERMANO MARINO DEMENTE."

if instance_exists(MegamanX) 
{
spr_mugchar_habla=spr_xmugshot_normalh
spr_mugchar=spr_xmugshot_normal
mugsprite_char=spr_mugchar
str[3] = "TU AVARICIA TE LLEVARA A LA RUINA, RINDETE Y DEVUELVE LAS RESERVAS DE AGUA TURTORIOD"
}
if instance_exists(Zero) 
{
spr_mugchar_habla=spr_zmugshot_normalh
spr_mugchar=spr_zmugshot_normal
mugsprite_char=spr_mugchar
str[3] = "TERMINEMOS CON ESTO, ¿QUIERES?"
}
if instance_exists(Axl) 
{
spr_mugchar_habla=spr_amugshot_normalh
spr_mugchar=spr_amugshot_normal
mugsprite_char=spr_mugchar
str[3] = "¿NO TE HAN PROGRAMADO EL CONCEPTO DE COMPARTIR? RINDETE Y ENTREGA EL AGUA, TORTUGA CON COMPLEJO DE CACTUS."
}

if instance_exists(Vile) 
{
spr_mugchar_habla=spr_zmugshot_normalh
spr_mugchar=spr_zmugshot_normal
mugsprite_char=spr_mugchar
str[3] = "TERMINEMOS CON ESTO, ¿QUIERES?"
}

str[4] = "ADELANTE, NO TENGO PROBLEMA EN ENSUCIARME LAS MANOS CON REPLOIDS ABURRIDOS COMO USTEDES."


str[0]=string_wordwrap_width(str[0],100,1,true)
str[1]=string_wordwrap_width(str[1],100,1,true)
str[2]=string_wordwrap_width(str[2],100,1,true)
str[3]=string_wordwrap_width(str[3],100,1,true)
str[4]=string_wordwrap_width(str[3],100,1,true)

//Modify these two to customize this engine
strmaxnumb = 4; //Max number of strings. E.g. if str[56] were the last string, this would be 56
typespeed = 20; //Typing speed

strnumb = 0; //Current string number
currentstr = str[0]; //The current string
pos = 0; //Position in the string to check for mouth expressions

ctrl=objControl
image_index=0
image_speed=0.13
animation=0
right=1
chatsize=0

chats=0
outline=32
chatsize=__view_get( e__VW.XView, 0 )+outline


