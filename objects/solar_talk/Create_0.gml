with (playerparent) {sprite_index=zstand}
global.canmove=0

spr_mugshot_habla=spr_solar_mugh
spr_mugshot=spr_solar_mug
mugsprite_mav=spr_mugshot
mugsprite=spr_xmugshot_normal

/// MAVERICK


if instance_exists(MegamanX) 
{
	str[0] = "NO ME ENCERRARAN DE NUEVO, NO ME ENCERRARAN DE NUEVO. NO ROBARAN MI PEQUEÑA.."
	str[1] = "POR ESO LA LANCE, POR ESO LA LANCE. NO PUEDEN TENERLA, AHORA ES VAPOR, AHORA ES VAPOR.."
	str[2] = "SOLO LA ARENA LA VIO BRILLAR, ES MI TESTIGO MUDO, ES MI TESTIGO MUDO.."
	spr_mugchar_habla=spr_xmugshot_normalh
	spr_mugchar=spr_xmugshot_normal
	mugsprite_char=spr_mugchar
	str[3] = "¡HAS LLEGADO DEMASIADO LEJOS STARFISH! ¡ESTO SE TERMINA AQUI Y AHORA!"
}

if instance_exists(Zero) 
{
	str[0] = "NO ME ENCERRARAN DE NUEVO, NO ME ENCERRARAN DE NUEVO. NO ROBARAN MI PEQUEÑA.."
	str[1] = "POR ESO LA LANCE, POR ESO LA LANCE. NO PUEDEN TENERLA, AHORA ES VAPOR, AHORA ES VAPOR.."
	str[2] = "SOLO LA ARENA LA VIO BRILLAR, E-"
	spr_mugchar_habla=spr_zmugshot_normalh
	spr_mugchar=spr_zmugshot_normal
	mugsprite_char=spr_mugchar
	str[3] = "NO TENGO TIEMPO PARA ESTO."
}

if instance_exists(Axl) 
{
	str[0] = "NO ME ENCERRARAN DE NUEVO, NO ME ENCERRARAN DE NUEVO. NO ROBARAN MI PEQUEÑA.."
	str[1] = "POR ESO LA LANCE, POR ESO LA LANCE. NO PUEDEN TENERLA, AHORA ES VAPOR, AHORA ES VAPOR.."
	str[2] = "SOLO LA ARENA LA VIO BRILLAR, ES MI TESTIGO MUDO, ES MI TESTIGO MUDO.."
	spr_mugchar_habla=spr_amugshot_normalh
	spr_mugchar=spr_amugshot_normal
	mugsprite_char=spr_mugchar
	str[3] = "NUNCA COMPRENDERE TUS DECISIONES AMIGO, ESTO SE ACABO."
}

if instance_exists(Vile) 
{
	str[0] = "NO ME ENCERRARAN DE NUEVO, NO ME ENCERRARAN DE NUEVO. NO ROBARAN MI PEQUEÑA.."
	str[1] = "POR ESO LA LANCE, POR ESO LA LANCE. NO PUEDEN TENERLA, AHORA ES VAPOR, AHORA ES VAPOR.."
	str[2] = "SOLO LA ARENA LA VIO BRILLAR, E-"
	spr_mugchar_habla=spr_zmugshot_normalh
	spr_mugchar=spr_zmugshot_normal
	mugsprite_char=spr_mugchar
	str[3] = "NO TENGO TIEMPO PARA ESTO."
}

str[0]=string_wordwrap_width(str[0],110,1,true)
str[1]=string_wordwrap_width(str[1],110,1,true)
str[2]=string_wordwrap_width(str[2],110,1,true)
str[3]=string_wordwrap_width(str[3],110,1,true)

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
chatsize=0

chats=0
outline=32
chatsize=__view_get( e__VW.XView, 0 )+outline


