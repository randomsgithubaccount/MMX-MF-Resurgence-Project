if circle=1
{
ratio=lerp(ratio,400,0.1)
}

if go=3
{
black_alpha+=0.005
}

if go=2
{circle_outline=15; white_alpha+=0.005; if white_alpha>=1 {go=3}}


if go>0
{
frame+=1+framespd
if frame>100 {instance_create_depth(x+random_range(-20,20),y+random_range(-45,0),depth,expob_mav); framespd+=0.7; frame=0}
if framespd>15 {framespd=15; if alarm[1]<1 {alarm[1]=100}}
xpeff+=random(2)+framespd
if xpeff>120 {instance_create_depth(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),depth,effectultraexp_rapid); xpeff=0}
}

if out=1
{
go=0
if black_alpha<=0 {white_alpha-=0.01}
normal_alpha=0
black_alpha-=0.02
if white_alpha<=0 {if alarm[2]<1 {alarm[2]=100; out=0}}
}

if instance_exists(playerparent)
{
inmune=1
playerparent.hsp=0
global.canmove=0
}

