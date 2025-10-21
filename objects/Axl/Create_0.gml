init_player()

i=0
repeat(30) {sx[i]=x; sy[i]=y; sindex[i]=sprite_index; iindex[i]=image_index; sdir[i]=dir; i+=1}

slow=0
contador = 0
dec=0
//VAR SONIDOS
sfx_s1=0
sfx_s2=0
sfx_s3=0

//SKILL ROLL
combo=0
max_roll=3
roll=0
canchargue=1

max_jump=1
jumps=0
slash_agarre=0

global.x_skill[0]=1

//NORMAL
zstand=s_axl_stand
zrun=s_axl_run
zjump=s_axl_jump
zjump2=s_axl_air
zdash=s_axl_dash
zdash2=s_axl_dash2
zwall=s_axl_wall
zwall2=s_axl_wall2
zsit=s_axl_sit
zsitup=s_axl_situp
zfinta=s_axl_fint
zintro=s_axl_intro

zshot=s_axl_shot
zshotU=s_axl_shotU
zshotUR=s_axl_shotUR
zshotDR=s_axl_shotDR

zfly=s_axl_airS
zshot_fly=s_axl_airS
zshotU_fly=s_axl_airU
zshotUR_fly=s_axl_airUR
zshotDR_fly=s_axl_airDR
zshotwall=s_axl_walls
zshotwallUR=s_axl_wallsUR
zshotwallDR=s_axl_wallsDR
    
zintro=s_axl_intro
zout=s_axl_out
zhurt=s_axl_hurt
zhurt=s_axl_hurt
zclimb=s_axl_climb
zclimb2=s_axl_climb2
zclimb3=s_axl_climb3
ztele=z_ztransport
zdead=s_axl_dead

zagarre=s_axl_rappel
zagarred=s_axl_rappelD
zagarreu=s_axl_rappelU
zagarrev=s_axl_rappel
zagarres=s_axl_rappel_base

i=0
repeat(7) {mavene[i]=eMax; i+=1}
skillhaze=1
heathaze=0
counter_haze=0
heathaze_out=0
shot_sprited=0
shoting=0
shot_dir=0
target_dir=0
counter_shot=0
bullets=0
counter_aim=0
counter_fly=0
index_agarre=0
timer_shot=1.4
max_bullets=10
timer_aim=1
timer_fly=10
index_agarre=0

my_pal_sprite=spr_zpalette;
current_pal=1
current_pal=wrap(current_pal,0,pal_swap_get_pal_count(my_pal_sprite)-1);
global.char=2
if global.canmove=10 {sprite_index=zintro; image_speed=0.4; sound_effect=sndintro}

