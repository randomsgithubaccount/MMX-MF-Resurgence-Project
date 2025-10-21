hit=bbox_bottom-(sprite_height/2)
shake=1
sound_hurt="boss"

if intro=0 
{
if pattern="none" && alarm[1]<1 {alarm[1]=random_range(70,150)}
}

if instance_exists(clawr)
{
if clawr.image_index!=3 {audio_stop_sound(SFX_MOTORON)}
if !instance_exists(playerparent) {audio_stop_sound(SFX_MOTORON)}
}
else {audio_stop_sound(SFX_MOTORON)}

if start=1 
{timeline_running = true}

if instance_exists(head)
{
head.x=x
head.y=y-20
head.hurt_counter=hurt_counter
}

if bowing=1
{
t = (t + increment) mod 360;
shift = amplitude * dsin(t);

yy= y
//apply the shift
bspd = bspd + lengthdir_y(shift, direction + 90);
y = yy + lengthdir_y(shift, direction + 90);
}


if instance_exists(clawr)
{clawr.hurt_counter=hurt_counter}
if instance_exists(clawl)
{clawl.hurt_counter=hurt_counter}

if instance_exists(playerparent)
{
switch(status)
{
    case "shake":
        x += irandom_range(-shake, shake)
        if !audio_is_playing(SFX_TEMBLOR) {sound_effect_loop=SFX_TEMBLOR}
        a=instance_create_depth(x+random_range(-70,70),y+random_range(-40,20),depth,subboss_magnectgib)
        a.image_index=random(a.image_number)
    break;
    case "move": 
        a=instance_create_depth(x+random_range(-70,70),y+random_range(-40,20),depth,subboss_magnectgib)
        a.image_index=random(a.image_number)
        if snd=0 {sound_effect=sfx_ridejump; snd=1}
        x+=lineal_move(x,spot_introx,1)
        y+=lineal_move(y,spot_introy,1)
        head.image_angle+=lineal_move(head.image_angle,0,1)
        image_angle+=lineal_move(image_angle,0,5)
        x += irandom_range(-shake, shake)
        head.x+= irandom_range(-shake, shake)
                clawr.x += irandom_range(-shake, shake)
                        clawl.x += irandom_range(-shake, shake)
    break;
    case "move_claws":
    if snd=1 {sound_effect=sfx_riderun; snd=2}
    bowing=1
        clawl.image_index=2
        clawr.image_index=2
        head.image_angle=0
        clawl.image_angle=lerp(clawl.image_angle,0,0.1)
        clawr.image_angle=lerp(clawr.image_angle,0,0.1)
        clawl.x+=lineal_move(clawl.x,x-50,1)
        clawl.y+=lineal_move(clawl.y,y+10,1)
        clawr.x+=lineal_move(clawr.x,x+50,1)
        clawr.y+=lineal_move(clawr.y,y+10,1)
        x += irandom_range(-shake, shake)
        head.x+= irandom_range(-shake, shake)
                clawr.x += irandom_range(-shake, shake)
                        clawl.x += irandom_range(-shake, shake)
                                x+=lineal_move(x,spot_introx,1)
                                y+=lineal_move(y,spot_introy+bspd,1)
    break;
    case "prefinta":
        if snd=2 {sound_effect=sfx_ridejump; snd=3}
        clawl.image_index=1
        clawr.image_index=1
        clawl.x+=lineal_move(clawl.x,x-50,1)
        clawl.y+=lineal_move(clawl.y,y+10,1)
        clawr.x+=lineal_move(clawr.x,x+50,1)
        clawr.y+=lineal_move(clawr.y,y+10,1)
        x += irandom_range(-shake, shake)
                head.x+= irandom_range(-shake, shake)
                clawr.x += irandom_range(-shake, shake)
                        clawl.x += irandom_range(-shake, shake)
                                x+=lineal_move(x,spot_introx,1)
                                y+=lineal_move(y,spot_introy+bspd,1)
    break;
    case "prefinta2":
        clawl.image_index=3
        clawr.image_index=3
        clawl.image_angle+=15
        clawr.image_angle-=15
        clawl.x+=lineal_move(clawl.x,x-60,1)
        clawl.y+=lineal_move(clawl.y,y,1)
        clawr.x+=lineal_move(clawr.x,x+60,1)
        clawr.y+=lineal_move(clawr.y,y,1)
        x += irandom_range(-shake, shake)
                head.x+= irandom_range(-shake, shake)
                clawr.x += irandom_range(-shake, shake)
                        clawl.x += irandom_range(-shake, shake)
                             x+=lineal_move(x,spot_introx,1)
                             y+=lineal_move(y,spot_introy+bspd,1)
    break;
    case "finta":
        audio_stop_sound(SFX_TEMBLOR)
        if !audio_is_playing(SFX_MOTORON) {sound_effect_loop=SFX_MOTORON}
        clawl.image_index=3
        clawr.image_index=3
        clawl.image_angle-=20
        clawr.image_angle+=20
        clawl.x+=lineal_move(clawl.x,x-60,1)
        clawl.y+=lineal_move(clawl.y,y,1)
        clawr.x+=lineal_move(clawr.x,x+60,1)
        clawr.y+=lineal_move(clawr.y,y,1)
    break;
    case "gostandclaw":
        audio_stop_sound(SFX_MOTORON)
        clawl.image_index=1
        clawr.image_index=1
        clawl.image_angle=0
        clawr.image_angle=0
        clawl.x+=lineal_move(clawl.x,x-50,1)
        clawl.y+=lineal_move(clawl.y,y+10,1)
        clawr.x+=lineal_move(clawr.x,x+50,1)
        clawr.y+=lineal_move(clawr.y,y+10,1)
    break;
    case "standclaw":
        if !audio_is_playing(SFX_SUBBOSS2) {sound_music=SFX_SUBBOSS2}
        global.canmove=1
        clawl.image_index=2
        clawr.image_index=2
        clawl.x+=lineal_move(clawl.x,x-50,1)
        clawl.y+=lineal_move(clawl.y,y+10,1)
        clawr.x+=lineal_move(clawr.x,x+50,1)
        clawr.y+=lineal_move(clawr.y,y+10,1)
        intro=0
    break;
    case "startbattle":
        clawl.x=lerp(clawl.x,x-50,0.2)
        clawl.y=lerp(clawl.y,y+10,0.2)
        clawr.x=lerp(clawr.x,x+50,0.2)
        clawr.y=lerp(clawr.y,y+10,0.2)
        x+=lineal_move(x,spot_alarm,1)
        if alarm[2]<1 {alarm[2]=50}
        bowing=1
    break;
    case "attack_spin":
        if snd=2 {sound_effect=sfx_ridejump; snd=3}
        clawl.image_index=1
        clawr.image_index=1
        clawl.x=lerp(clawl.x,x-50,0.2)
        clawl.y=lerp(clawl.y,y+10,0.2)
        clawr.x=lerp(clawr.x,x+50,0.2)
        clawr.y=lerp(clawr.y,y+10,0.2)
        if timeline_exists(attack_spin_clawboss)
        {timeline_index = attack_spin_clawboss; timeline_running=true; timeline_position = 0; timeline_loop = false; timeline_speed=1.5}
    break;
    case "attack_spin1":
        if !audio_is_playing(SFX_MOTORON) {sound_effect_loop=SFX_MOTORON}
        clawl.image_index=3
        clawr.image_index=3
        clawl.image_angle-=15
        clawr.image_angle+=15
        clawl.x=lerp(clawl.x,x-50,0.2)
        clawl.y=lerp(clawl.y,y+20,0.2)
        clawr.x=lerp(clawr.x,x+50,0.2)
        clawr.y=lerp(clawr.y,y+20,0.2)
        spot_spinry=944
        x+=lineal_move(x,spot_spinrx,2)
        y=lerp(y,spot_spinry+bspd,0.1)
    break;
    case "attack_spin2":
        a=instance_create_depth(x+random_range(-70,70),y+random_range(-40,20),depth,subboss_magnectgib)
        a.image_index=random(a.image_number)
        clawl.image_index=3
        clawr.image_index=3
        clawl.image_angle-=20
        clawr.image_angle+=20
        if angulo>360 or angulo<-360  {angulo=0}
        if spot_spinrx=4800 {spot_spinrxx=4992; spot_spinryy=944; angulo-=10} else {spot_spinrxx=4800; spot_spinryy=944; angulo+=10}
        spotgxl=x + lengthdir_x(70,angulo+180)
        spotgyl=y-16 + lengthdir_y(70,angulo+180)
        spotgxr=x + lengthdir_x(70,angulo)
        spotgyr=y-16 + lengthdir_y(70,angulo)
        clawl.x=lerp(clawl.x,spotgxl,0.2)
        clawl.y=lerp(clawl.y,spotgyl,0.2)
        clawr.x=lerp(clawr.x,spotgxr,0.2)
        clawr.y=lerp(clawr.y,spotgyr,0.2)
        x+=lineal_move(x,spot_spinrxx,2)
        move=0
    break;
    case "stop_spin":
        angulo=0
        audio_stop_sound(SFX_MOTORON)
        clawl.image_index=1
        clawr.image_index=1
        clawl.image_angle=0
        clawr.image_angle=0
        clawl.x=lerp(clawl.x,x-50,0.2)
        clawl.y=lerp(clawl.y,y+10,0.2)
        clawr.x=lerp(clawr.x,x+50,0.2)
        clawr.y=lerp(clawr.y,y+10,0.2)
    break;
    case "back_to":
        clawl.image_index=2
        clawr.image_index=2
        clawl.image_angle=lerp(image_angle,0,0.2)
        clawr.image_angle=lerp(image_angle,0,0.2)
        clawl.x=lerp(clawl.x,x-50,0.1)
        clawl.y=lerp(clawl.y,y+10,0.1)
        clawr.x=lerp(clawr.x,x+50,0.1)
        clawr.y=lerp(clawr.y,y+10,0.1)
        x+=lineal_move(x,spot_introx,2)
        y=lerp(y,spot_introy+bspd,0.1)
    break;
    case "attack_thunder":
        clawl.image_index=0
        clawr.image_index=0
        clawl.image_angle=lerp(image_angle,360,0.1)
        clawr.image_angle=-lerp(image_angle,360,0.1)
        clawl.x=lerp(clawl.x,x-20,0.1)
        clawl.y=lerp(clawl.y,y,0.1)
        clawr.x=lerp(clawr.x,x+20,0.1)
        clawr.y=lerp(clawr.y,y,0.1)
        if !instance_exists(a)
        {a=instance_create_depth(x,y,depth,thunderdest2); a.image_alpha=0.8; a.image_index=5; a.image_xscale=1; a.image_yscale=1}
        thunder+=0.1
        if thunder>=5 {instance_create_depth(x,y,depth,misil_busterv); thunder=0}
    break;
    case "attack_grabr":
        clawl.image_index=0
        clawr.image_index=0
        clawl.image_angle=90
        clawr.image_angle=180
        clawl.x=lerp(clawl.x,floor(playerparent.x),0.1)
        clawl.y=lerp(clawl.y,spot_introy-90,0.1)
        clawr.x=lerp(clawr.x,spot_introx+150,0.1)
        clawr.y=lerp(clawr.y,floor(playerparent.y)-20,0.1)
    break;
    case "attack_grabl":
        clawl.image_index=0
        clawr.image_index=0
        clawr.image_angle=270
        clawl.image_angle=180
        clawr.x=lerp(clawr.x,floor(playerparent.x),0.1)
        clawr.y=lerp(clawr.y,spot_introy-90,0.1)
        clawl.x=lerp(clawl.x,spot_introx-150,0.1)
        clawl.y=lerp(clawl.y,floor(playerparent.y)-20,0.1)
    break;
    case "attack_shotr":
        clawl.image_index=0
        clawr.image_index=0
        if !instance_exists(a)
        {
        a=instance_create_depth(clawr.x-32,clawr.y+7,depth,thunderdest2); a.image_alpha=0.8; a.image_index=5; a.image_xscale=1; a.image_yscale=1
        c=instance_create_depth(clawl.x-7,clawl.y+32,depth,thunderdest2); c.image_alpha=0.8; c.image_index=5; c.image_xscale=1; c.image_yscale=1
        }
        thunder+=0.1

            if thunder>=4 
            {
            b=instance_create_depth(clawr.x-32,clawr.y+7,depth,misil_busterv); b.follow=0; b.hspeed=-4
            e=instance_create_depth(clawl.x-7,clawl.y+32,depth,misil_busterv); e.follow=0; e.vspeed=4; thunder=0
            }
    break;
    case "attack_shotl":
        clawl.image_index=0
        clawr.image_index=0
        if !instance_exists(a)
        {
        a=instance_create_depth(clawl.x+32,clawl.y+7,depth,thunderdest2); a.image_alpha=0.8; a.image_index=5; a.image_xscale=1; a.image_yscale=1
        c=instance_create_depth(clawr.x+7,clawr.y+32,depth,thunderdest2); c.image_alpha=0.8; c.image_index=5; c.image_xscale=1; c.image_yscale=1
        }
        
        thunder+=0.1

            if thunder>=4 
            {
            b=instance_create_depth(clawl.x+32,clawl.y+7,depth,misil_busterv); b.follow=0; b.hspeed=4
            e=instance_create_depth(clawr.x+7,clawr.y+32,depth,misil_busterv); e.follow=0; e.vspeed=4; thunder=0
            }
    break;
    case "attack_stun":
        clawl.image_index=1
        clawr.image_index=1
        if !place_meeting(clawr.x,clawr.y,parSolid)
        {
        spd+=4
        clawr.x=lerp(clawr.x,x+50,0.1)
        clawr.y=lerp(clawr.y,spot_introy+spd,0.1)
        clawl.x=lerp(clawl.x,x-50,0.1)
        clawl.y=lerp(clawl.y,spot_introy+spd,0.1)
        }
        else 
        {
            spd=0
            shake=10
            thunder+=0.1
            if !instance_exists(a)
            {
            a=instance_create_depth(clawl.x,clawl.y,depth,thunderdest2); a.image_alpha=0.8; a.image_index=5; a.image_xscale=1; a.image_yscale=1
            c=instance_create_depth(clawr.x,clawr.y,depth,thunderdest2); c.image_alpha=0.8; c.image_index=5; c.image_xscale=1; c.image_yscale=1
            }
            
            if thunder>=4 
            {
            b=instance_create_depth(clawl.x,976,depth,elec_mov2); b.out=1 ; b.spd=1
            e=instance_create_depth(clawr.x,976,depth,elec_mov2); e.out=1 ; e.spd=-1
            thunder=0
            }
        } 
    break;
}
}
else
{
if status="none" {}
    else
    {
        clawl.image_index=2
        clawr.image_index=2
        clawl.image_angle=lerp(image_angle,0,0.2)
        clawr.image_angle=lerp(image_angle,0,0.2)
        clawl.x=lerp(clawl.x,x-50,0.1)
        clawl.y=lerp(clawl.y,y+10,0.1)
        clawr.x=lerp(clawr.x,x+50,0.1)
        clawr.y=lerp(clawr.y,y+10,0.1)
        x+=lineal_move(x,spot_introx,2)
        y=lerp(y,spot_introy+bspd,0.1)
    }
}
x=round(x)

