with (playerparent) {sprite_index=zstand}
global.canmove=0

spr_mugshot_habla=spr_drlight_mugh
spr_mugshot=spr_drlight_mug
mugsprite_mav=spr_mugshot
mugsprite=spr_xmugshot_normal

/// MAVERICK

if instance_exists(MegamanX) 
{
	str[0] = "I DIDN'T EXPECT TO SEE YOU AGAIN, X. THE WORLD MUST BE GOING THROUGH TOUGH TIMES."
	str[1] = "I PREPARED SOME INTERCHANGEABLE PARTS FOR YOU. THESE ARE THE GROUND ARMOR'S BUSTER PARTS."
	str[2] = "GROUND BUSTER CAN BOUNCE TO MULTIPLE ENEMIES DEFENDING ALL YOUR SIDES."
	str[3] = "ENTER THE CAPSULE TO EQUIP THIS SKILL, X."
	str[4] = "I HOPE THIS IS THE LAST TIME YOU NEED MY HELP."
	spr_mugchar_habla=spr_xmugshot_normalh
	spr_mugchar=spr_xmugshot_normal
	mugsprite_char=spr_mugchar
}

if instance_exists(Zero) 
{
	str[0] = "ZERO... NO ESPERABA QUE NECESITARAN ALGO, EL MUNDO SE HACE CADA VEZ MAS PELIGROSO."
	str[1] = "POR ESO PREPARE UNAS PARTES, ESTA FORMA PARTE DE LA GROUND ARMOR, LAS PIERNAS"
	str[2] = "TENDRAS UNA GRAN VELOCIDAD DE IMPULSO CAUSANDO DAÑO Y PODRAS CAMINAR SOBRE CUALQUIER TERRENO."
	str[3] = "PERO PARECE QUE X NO ESTA PRESENTE, ESTA PARTE NO ES COMPATIBLE CON TU SISTEMA"
	str[4] = "ESPERO QUE ESTA SEA LA ULTIMA VEZ QUE NECESITEMOS ESTAS ARMAS PARA DESTRUIR."
	spr_mugchar_habla=spr_zmugshot_normalh
	spr_mugchar=spr_zmugshot_normal
	mugsprite_char=spr_mugchar
}

if instance_exists(Axl) 
{
	str[0] = "AXL... NO ESPERABA QUE NECESITARAN ALGO, EL MUNDO SE HACE CADA VEZ MAS PELIGROSO."
	str[1] = "POR ESO PREPARE UNAS PARTES, ESTA FORMA PARTE DE LA GROUND ARMOR, LAS PIERNAS"
	str[2] = "TENDRAS UNA GRAN VELOCIDAD DE IMPULSO CAUSANDO DAÑO Y PODRAS CAMINAR SOBRE CUALQUIER TERRENO."
	str[3] = "PERO PARECE QUE X NO ESTA PRESENTE, ESTA PARTE NO ES COMPATIBLE CON TU SISTEMA"
	str[4] = "ESPERO QUE ESTA SEA LA ULTIMA VEZ QUE NECESITEMOS ESTAS ARMAS PARA DESTRUIR."
	spr_mugchar_habla=spr_amugshot_normalh
	spr_mugchar=spr_amugshot_normal
	mugsprite_char=spr_mugchar
}

if instance_exists(Vile) 
{
	str[0] = "VILE... NO ESPERABA QUE NECESITARAN ALGO, EL MUNDO SE HACE CADA VEZ MAS PELIGROSO."
	str[1] = "POR ESO PREPARE UNAS PARTES, ESTA FORMA PARTE DE LA GROUND ARMOR, LAS PIERNAS"
	str[2] = "TENDRAS UNA GRAN VELOCIDAD DE IMPULSO CAUSANDO DAÑO Y PODRAS CAMINAR SOBRE CUALQUIER TERRENO."
	str[3] = "PERO PARECE QUE X NO ESTA PRESENTE, ESTA PARTE NO ES COMPATIBLE CON TU SISTEMA"
	str[4] = "ESPERO QUE ESTA SEA LA ULTIMA VEZ QUE NECESITEMOS ESTAS ARMAS PARA DESTRUIR."
	spr_mugchar_habla=spr_zmugshot_normalh
	spr_mugchar=spr_zmugshot_normal
	mugsprite_char=spr_mugchar
}

str[0]=string_wordwrap_width(str[0],110,1,true)
str[1]=string_wordwrap_width(str[1],110,1,true)
str[2]=string_wordwrap_width(str[2],110,1,true)
str[3]=string_wordwrap_width(str[3],110,1,true)
str[4]=string_wordwrap_width(str[4],110,1,true)

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


