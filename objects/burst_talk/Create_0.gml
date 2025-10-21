with (playerparent) {sprite_index=zstand}
global.canmove=0

spr_mugshot_habla=spr_flameburst_mugh
spr_mugshot=spr_flameburst_mug
mugsprite_mav=spr_mugshot
mugsprite=spr_xmugshot_normal

/// MAVERICK
str[0] = "Maverick hunters???, se funden facilmente en mis llamas. No entienden que somos la llama de la vida y el caos. "
str[1] = "Seres perfectos e inmortales, volvemos de las cenizas en nuevas corazas. "
str[2] = "Construyendo nuestros nuevos cuerpos para desatar todo nuestro potencial caotico. "
str[3] = "Seran mi combustible y materia prima. "

if instance_exists(MegamanX) 
{
spr_mugchar_habla=spr_xmugshot_normalh
spr_mugchar=spr_xmugshot_normal
mugsprite_char=spr_mugchar
str[4] = "No entiendo porque intentan hacer esto, fundir reploids sin razon aparente. "
str[5] = "Burstnyx si no tienes nada que ver en esto, entregate. "
}

if instance_exists(Zero) 
{
spr_mugchar_habla=spr_zmugshot_normalh
spr_mugchar=spr_zmugshot_normal
mugsprite_char=spr_mugchar
str[4] = "¿Otra vez tu? He estado esperando una revancha desde que escapaste."
str[5] = "No importa lo que digan mis camaradas, tu presencia nos destruira tarde o temprano."
}

if instance_exists(Axl) 
{
spr_mugchar_habla=spr_amugshot_normalh
spr_mugchar=spr_amugshot_normal
mugsprite_char=spr_mugchar
str[4] = "reploids fundidos..., Que estas planeando?, todo resulta mas extraño cada vez que lo pienso"
str[5] = "de todas maneras, debo detener todo esto mientras pueda."
}

if instance_exists(Vile) 
{
spr_mugchar_habla=spr_zmugshot_normalh
spr_mugchar=spr_zmugshot_normal
mugsprite_char=spr_mugchar
str[4] = "¿Otra vez tu? He estado esperando una revancha desde que escapaste."
str[5] = "No importa lo que digan mis camaradas, tu presencia nos destruira tarde o temprano."
}
str[0]=string_wordwrap_width(str[0],100,1,true)
str[1]=string_wordwrap_width(str[1],100,1,true)
str[2]=string_wordwrap_width(str[2],100,1,true)
str[3]=string_wordwrap_width(str[3],100,1,true)
str[4]=string_wordwrap_width(str[4],100,1,true)
str[5]=string_wordwrap_width(str[5],100,1,true)

//Modify these two to customize this engine
strmaxnumb = 5; //Max number of strings. E.g. if str[56] were the last string, this would be 56
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


