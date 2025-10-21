with (playerparent) {sprite_index=zstand}
global.canmove=0

spr_mugshot_habla=spr_swampfrog_mug2
spr_mugshot=spr_swampfrog_mug
mugsprite_mav=spr_mugshot
mugsprite=spr_xmugshot_normal

/// MAVERICK
if instance_exists(MegamanX) 
{
str[0] = "TODO TIENE UN PRINCIPIO Y UN FINAL, PERO EL NO. EL Y SU IDEOLOGIA SIEMPRE PERDURARA,"
str[1] = "REGRESARA DE UNA U OTRA FORMA, NO IMPORTA CUANTO TE ESFUERCES, NO PUEDES PROTEGER"
str[2] = "ESTE MUNDO PARA SIEMPRE. ESTE MUNDO SUFRIRA CON SU DILUVIO Y BORRARA LOS RECUERDOS"
str[3] = "EN UN MANTO AZUL Y SERA MOLDEADO A SU IMAGEN."
spr_mugchar_habla=spr_xmugshot_normalh
spr_mugchar=spr_xmugshot_normal
mugsprite_char=spr_mugchar
str[4] = "PENSE QUE LOS IDEALES DE SIGMA HABIAN MUERTO JUNTO A SU MEMORIA, ASI TARDE UNA ETERNIDAD,"
str[5] = "NO IMPORTA, PELEARE CADA VEZ QUE HAGA FALTA PARA PROTEGER ESTE MUNDO."
}
if instance_exists(Zero) 
{
str[0] = "USTEDES, MENTES CORRUPTAS, NO IMPORTA CUANTO PROTEJAN A LOS HUMANOS, ESTOS SIEMPRE"
str[1] = "ATENTARAN CON BUSCAR SU AUTODESTRUCCION Y LA DE ESTE MUNDO. LA UNICA SOLUCION ES"
str[2] = "MOLDEAR EL MUNDO Y CONVERTIR CADA SER EN UNA MENTE UNICA. DESTRUIR Y RENOVAR."
str[3] = "SUS PRESENCIAS MALIGNAS NO DEBEN SEGUIR EXISTIENDO."
spr_mugchar_habla=spr_zmugshot_normalh
spr_mugchar=spr_zmugshot_normal
mugsprite_char=spr_mugchar
str[4] = "QUE ADMIRABLE MAVERICK, PERO TUS IDEALES SON MALIGNOS Y MIENTRAS EN ESTE MUNDO EXISTA LA MALDAD"
str[5] = "CONTINUARE LUCHANDO HASTA QUE NO ME NECESITE."
}
if instance_exists(Axl) 
{
str[0] = "USTEDES, MENTES CORRUPTAS, NO IMPORTA CUANTO PROTEJAN A LOS HUMANOS, ESTOS SIEMPRE"
str[1] = "ATENTARAN CON BUSCAR SU AUTODESTRUCCION Y LA DE ESTE MUNDO. LA UNICA SOLUCION ES"
str[2] = "MOLDEAR EL MUNDO Y CONVERTIR CADA SER EN UNA MENTE UNICA. DESTRUIR Y RENOVAR."
str[3] = "SUS PRESENCIAS MALIGNAS NO DEBEN SEGUIR EXISTIENDO."
spr_mugchar_habla=spr_amugshot_normalh
spr_mugchar=spr_amugshot_normal
mugsprite_char=spr_mugchar
str[4] = "ESO ESTA POR VERSE,"
str[5] = "PERO ANTES TENDRE QUE ACABAR CON TU CLUB PARA FANS DE SIGMA"
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


