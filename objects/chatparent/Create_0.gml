with (playerparent) {sprite_index=zstand}
global.canmove=0

spr_mugshot_habla=spr_swampfrog_mug2
spr_mugshot=spr_swampfrog_mug
mugsprite_mav=spr_mugshot
mugsprite=spr_xmugshot_normal

/// MAVERICK
str[0] = "Han tardado mas de lo que esperaba, comenzaba a pensar que mis trampas acabaron con ustedes. "
str[1] = "Son muy duros, he de admitirlo... pero les aseguro que mis plantas perforaran su cazco sin ningun esfuerzo. "

if instance_exists(MegamanX) 
{
spr_mugchar_habla=spr_xmugshot_normalh
spr_mugchar=spr_xmugshot_normal
mugsprite_char=spr_mugchar
str[2] = "Spineel, no tienes escapatoria, RINDETE."
}
if instance_exists(Zero) 
{
spr_mugchar_habla=spr_zmugshot_normalh
spr_mugchar=spr_zmugshot_normal
mugsprite_char=spr_mugchar
str[2] = "De verdad crees que simples trampas y totems nos detendrian?"
}
if instance_exists(Axl) 
{
spr_mugchar_habla=spr_amugshot_normalh
spr_mugchar=spr_amugshot_normal
mugsprite_char=spr_mugchar
str[2] = "Tal vez si no habitaras en fangolandia estariamos a tiempo para la fiesta."
}

str[3] = "Calma... calma, aun estamos a tiempo para divertirnos, todavia tengo algunas sorpresas que mostrarles."

str[0]=string_wordwrap_width(str[0],100,1,true)
str[1]=string_wordwrap_width(str[1],100,1,true)
str[2]=string_wordwrap_width(str[2],100,1,true)
str[3]=string_wordwrap_width(str[3],100,1,true)

//Modify these two to customize this engine
strmaxnumb = 3; //Max number of strings. E.g. if str[56] were the last string, this would be 56
typespeed = 20; //Typing speed

strnumb = 0; //Current string number
currentstr = str[0]; //The current string
pos = 0; //Position in the string to check for mouth expressions

ctrl=objControl
image_index=0
image_speed=0.13
animation=0

right=1
chats=0
outline=32
chatsize=__view_get( e__VW.XView, 0 )+outline