x=__view_get( e__VW.XView, 0 )
y=__view_get( e__VW.YView, 0 )

if ob_pausemenu.paused=true && image_alpha<1 {image_alpha+=0.2}
if ob_pausemenu.paused=false && image_alpha>0 {image_alpha-=0.1}

if keyboard_check(ord("N")) {global.metalmoney+=1}

if ctrl.special_pressed {if cfg=0 {cfg=1; selecter=0} else {cfg=0}}

if cfg=1
{
counter_parpadeo+=0.5

if ctrl.up_pressed {selecter-=1; sound_effect=select}
if ctrl.down_pressed {selecter+=1; sound_effect=select}

if selecter=0 
{
if ctrl.left_pressed {if music_volume>0 {music_volume-=0.05; sound_effect=select; modify_volume=1}}
if ctrl.right_pressed {if music_volume<10 {music_volume+=0.05; sound_effect=select; modify_volume=1}}
}
if selecter=1
{
if ctrl.left_pressed {if effect_volume>0 {effect_volume-=0.05; sound_effect=select}}
if ctrl.right_pressed {if effect_volume<10 {effect_volume+=0.05; sound_effect=select}}
}

selecter=min(selecter,1)
selecter=max(selecter,0)
}

if cfg=0
{
/// SUB TANKS
if ctrl.shot_pressed
{
if selecter=10 {lock=1}
if selecter=11 {lock=1}
if selecter=12 {lock=1}
if selecter=13 {lock=1}

if selecter=14 {lock=1}
if selecter=15 {lock=1}
if selecter=16 {lock=1}
if selecter=17 {lock=1}
}

if lock=1
{
timer=4
if selecter=10 {if global.subtank[0]>0 {if alarm[0]<1 {alarm[0]=timer}}; if global.subtank[0]=0 {lock=100}}
if selecter=11 {if global.subtank[1]>0 {if alarm[0]<1 {alarm[0]=timer}}; if global.subtank[1]=0 {lock=100}}
if selecter=12 {if global.subtank[2]>0 {if alarm[0]<1 {alarm[0]=timer}}; if global.subtank[2]=0 {lock=100}}
if selecter=13 {if global.subtank[3]>0 {if alarm[0]<1 {alarm[0]=timer}}; if global.subtank[3]=0 {lock=100}}

if selecter=14 {if global.etank[0]>0 {if alarm[0]<1 {alarm[0]=timer}}; if global.etank[0]=0 {lock=100}}
if selecter=15 {if global.etank[1]>0 {if alarm[0]<1 {alarm[0]=timer}}; if global.etank[1]=0 {lock=100}}
if selecter=16 {if global.etank[2]>0 {if alarm[0]<1 {alarm[0]=timer}}; if global.etank[2]=0 {lock=100}}
if selecter=17 {if global.etank[3]>0 {if alarm[0]<1 {alarm[0]=timer}}; if global.etank[3]=0 {lock=100}}
}

// ORDENADO BURBUJA

if lock=100 
{
    i=0
    burbuja=0
    burbuja2=0
    repeat(3)
    {
        if i<3
        {
            if (global.subtank[i]<global.subtank[i+1]) 
            {
            burbuja=global.subtank[i]
            global.subtank[i]=global.subtank[i+1]
            PersistentVars.tanktofill=i
            global.subtank[i+1]=burbuja
            }
            if (global.etank[i]<global.etank[i+1]) 
            {
            burbuja2=global.etank[i]
            global.etank[i]=global.etank[i+1]
            PersistentVars.etanktofill=i
            global.etank[i+1]=burbuja2
            }
        }
        i+=1
    }
    lock=0
}

/// SELECTORES

if lock=0
{
if ctrl.shot_pressed && area=0 && selecter<9
{
if global.x_skill[selecter]=1
{
PersistentVars.skillmenu=selecter
sound_effect=armorputsnd 
}
else {sound_effect=snd_error}
}

if (selecter>=0) && (selecter<10) {area=0}

if (selecter>9) && (selecter<14) {area=1}

if (selecter>13) {area=2}

if area=0
{

z=0
u=8
repeat(8)
{
if global.x_skill[z]=0 && selecter=z && dir=1 {selecter+=1}
if global.x_skill[u]=0 && selecter=u && dir=-1 {selecter-=1}
z++
u--
}

if ctrl.up_pressed {if selecter>0 {selecter-=1; sound_effect=select; dir=-1 }}
if ctrl.down_pressed {if selecter<9 {selecter+=1; sound_effect=select; dir=1 }}

if ctrl.left_pressed 
{selecter=18; sound_effect=select}

if ctrl.right_pressed 
{selecter=10; sound_effect=select }
}

if area=1
{
if ctrl.up_pressed {if selecter=1+9 {selecter=1+17}; if selecter=1+10 {selecter=1+17}; if selecter=1+11 {selecter=1+9}; if selecter=1+12 {selecter=1+10}; sound_effect=select }
if ctrl.down_pressed {if selecter=1+9 {selecter=1+11}; if selecter=1+10 {selecter=1+12}; sound_effect=select }

if ctrl.right_pressed {if selecter=1+10 {selecter=1+13}; if selecter=1+12 {selecter=1+15}; if selecter=1+9 {selecter=1+10}; if selecter=1+11 {selecter=1+12}; sound_effect=select }
if ctrl.left_pressed {if selecter=1+9 {selecter=1+0}; if selecter=1+11 {selecter=0}; if selecter=1+10 {selecter=1+9}; if selecter=1+12 {selecter=1+11}; sound_effect=select }
}

counter_parpadeo+=0.5

if area=2
{
if ctrl.up_pressed {if selecter=1+13 {selecter=1+17}; if selecter=1+14 {selecter=1+17}; if selecter=1+15 {selecter=1+13}; if selecter=1+16 {selecter=1+14}; sound_effect=select }
if ctrl.down_pressed {if selecter=1+13 {selecter=1+15}; if selecter=1+14 {selecter=1+16}; if selecter=1+17 {selecter=1+9}; sound_effect=select }

if ctrl.right_pressed {if selecter=1+13 {selecter=1+14}; if selecter=1+15 {selecter=1+16}; sound_effect=select }
if ctrl.left_pressed {if selecter=1+13 {selecter=1+10}; if selecter=1+15 {selecter=1+12}; if selecter=1+14 {selecter=1+13}; if selecter=1+16 {selecter=1+15}; if selecter=1+17 {selecter=1+0}; sound_effect=select }
}
}

}

