init_player()
i=0
repeat(30) {sx[i]=x; sy[i]=y; sindex[i]=sprite_index; iindex[i]=image_index; sdir[i]=dir; i+=1}
slow=0
contador = 0
dec=0
//VAR SONIDOS
sound_slash=0
c_color=c_red

//SKILL ROLL
combo=0
saber[0]=0
saber[1]=0
saber[2]=0
max_roll=3
roll=0
canchargue=1

max_jump=1
jumps=0
slash_agarre=0

global.x_skill[0]=1
//NORMAL
zstand=s_zstand
zrun=s_zrun
zjump=s_zjump
zjump2=s_zjump2
zdash=s_zdash
zwall=s_zwall
zwall2=s_zwall2
zsit=s_zsit
zsitup=s_zsitup
zfinta=s_zfint
zintro=s_zintro
zslash1=s_zslash1R
zslash2=s_zslash2R
zslash3=s_zslash3R
zslashair=s_zslashairn
zslashup=s_zslashup
zslashright=s_zslashright
zslashwall=s_zslashwall
zslashair2=s_zslashair_roll
zslashfull=s_zslashfull
zslashfull2=s_zslashfull2
zslashfullair=s_zslashfull_air 
zsitslash=s_zsitslash
zout=z_ztransport
zhurt=s_zhurt
zclimb=s_zclimb
zclimb2=s_zclimb2
zclimb3=s_zclimb3
ztele=z_ztransport
zdead=s_zerodeath
zbuster=s_zerobuster
zbusterout=s_zerobuster_out
zbustera=s_zerobustera
zbusterouta=s_zerobustera_out
zdash2=s_axl_dash2
zice=s_zslashice
zice_broke=s_zbrokenice

zagarre=s_zrappel
zagarred=s_zrappeldown
zagarreu=s_zrappelup
zagarrev=s_zrappelv
zagarres=spr_rappel_slash
zagarreds=spr_rappel_slashdown
zagarreus=spr_rappel_slashup
zagarrevs=spr_rappel_slashv
rayretsuzan=s_zsk1_FR
rayretsuzan2=s_zsk1_SR
zhaze=s_activatehaze
my_pal_sprite=spr_zpalette;

if global.xarmor=0
{
//NORMAL
zstand=s_zstand
zrun=s_zrun
zjump=s_zjump
zjump2=s_zjump2
zdash=s_zdash
zwall=s_zwall
zwall2=s_zwall2
zsit=s_zsit
zsitup=s_zsitup
zfinta=s_zfint
zintro=s_zintro
zslash1=s_zslash1R
zslash2=s_zslash2R
zslash3=s_zslash3R
zslashair=s_zslashairn
zslashup=s_zslashup
zslashright=s_zslashright
zslashwall=s_zslashwall
zslashair2=s_zslashair_roll
zslashfull=s_zslashfull
zslashfull2=s_zslashfull2
zslashfullair=s_zslashfull_air 
zsitslash=s_zsitslash
zout=z_ztransport
zhurt=s_zhurt
zclimb=s_zclimb
zclimb2=s_zclimb2
zclimb3=s_zclimb3
ztele=z_ztransport
zdead=s_zerodeath
zbuster=s_zerobuster
zbusterout=s_zerobuster_out
zbustera=s_zerobustera
zbusterouta=s_zerobustera_out
zdash2=s_axl_dash2
zice=s_zslashice
zice_broke=s_zbrokenice

zagarre=s_zrappel
zagarred=s_zrappeldown
zagarreu=s_zrappelup
zagarrev=s_zrappelv
zagarres=spr_rappel_slash
zagarreds=spr_rappel_slashdown
zagarreus=spr_rappel_slashup
zagarrevs=spr_rappel_slashv
rayretsuzan=s_zsk1_FR
rayretsuzan2=s_zsk1_SR
zhaze=s_activatehaze
my_pal_sprite=spr_zpalette;
}

if global.xarmor=1
{
//NORMAL
zstand=s_uzstand
zrun=s_uzrun
zjump=s_uzjump
zjump2=s_uzjump2
zdash=s_uzdash
zwall=s_uzwall
zwall2=s_uzwall2R
zsit=s_uzsit
zsitup=s_uzsitup
zfinta=s_uzout
zintro=s_uzintro
zslash1=s_uzero_slash1
zslash2=s_uzero_slash2
zslash3=s_uzero_slash3
zslashair=s_uzslashairn
zslashup=s_uzslashup
zslashright=s_uzslashright
zslashwall=s_uzslashwall
zslashair2=s_uzslashair_roll
zslashfull=s_uzero_slashfull
zslashfull2=s_zslashfull2
zslashfullair=s_zslashfull_air 
zsitslash=s_uzsitslash
zout=s_uzfinta
zhurt=s_uzhurt
zclimb=s_uzclimb
zclimb2=s_uzclimb2
zclimb3=s_uzclimb3
ztele=s_uzfinta
zdead=s_zerodeath
zbuster=s_uzbuster
zbusterout=s_uzbuster_out
zbustera=s_uzbuster
zbusterout=s_uzbuster_out
zdash2=s_axl_dash2
zice=s_uzslashice
zice_broke=s_uzbrokenice

zagarre=s_zrappel
zagarred=s_zrappeldown
zagarreu=s_zrappelup
zagarrev=s_zrappel
zagarres=spr_rappel_slash
zagarreds=spr_rappel_slashdown
zagarreus=spr_rappel_slashup
zagarrevs=s_zrappel
rayretsuzan=s_zsk1_FR
rayretsuzan2=s_zsk1_SR
zhaze=s_uzactivatehaze

my_pal_sprite=s_uzpal
}

i=0
repeat(7) {mavene[i]=eMax; i+=1}

skillhaze=1
heathaze=0
counter_haze=0
heathaze_out=0
canfly=0
timer_fly=10
current_pal=0
current_pal=wrap(current_pal,0,pal_swap_get_pal_count(my_pal_sprite)-1);
index_agarre=0
global.char=1
if global.canmove=10 {sprite_index=zintro; image_speed=0.4; sound_effect=sndintro}
swords=instance_create_depth(x,y,depth,swords_normal)
with(swords) {instance_destroy()}

