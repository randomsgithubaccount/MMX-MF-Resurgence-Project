grv_speed = 0

if sprite_index=spr_shark_ene 
{
image_speed=0.4
if dir=1 {right=1}
if dir=-1 {left=1}

if down=1 {vspeed=1} 
if up=1 {vspeed=-1}
if left=1 {hspeed=-3} 
if right=1 {hspeed=3}
}
if sprite_index=spr_shark_volt {image_speed=0.2; hspeed=0; vspeed=0}

if alarm[0]<1 {alarm[0]=random_range(30,80)}

