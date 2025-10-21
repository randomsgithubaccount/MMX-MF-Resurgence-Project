if xtremes=0
{
snd=0
teles=irandom(4)

if sprite_index=zstand
{
    if pattern=1 {sprite_index=ztele; center=1; sound_effect=sfx_geemel_tele}
    if pattern=2 {sprite_index=ztele; teles=1; sound_effect=sfx_geemel_tele}
    if pattern=3 {if paravel=0 {sprite_index=zjump; vsp=-6; hsp=choose(2,3)*dir; sound_effect=SFX_jump}}
    if pattern=4 {sprite_index=ztele; sound_effect=sfx_geemel_tele}
    if pattern=5 {if paravel=0 {sprite_index=zjump; vsp=-6; hsp=choose(2,3)*dir; sound_effect=SFX_jump}}
    if pattern=6 {sprite_index=ztele; sound_effect=sfx_geemel_tele}
    if pattern=7 {if paravel=0 {sprite_index=zjump; vsp=-6; hsp=choose(2,3)*dir; sound_effect=SFX_jump}}
    if pattern=8 {sprite_index=ztele; center=1; sound_effect=sfx_geemel_tele; if instance_exists(obj_paravel) && !instance_exists(obj_shuripara) {obj_paravel.out=1; paravel=0}; desperation=0}
    if pattern=9 {sprite_index=ztele; teles=1; sound_effect=sfx_geemel_tele}
    if pattern=10 {sprite_index=zshuri}
    if pattern=11 {if paravel=0 {sprite_index=zjump; vsp=-6; hsp=choose(2,3)*dir; sound_effect=SFX_jump}}
    if pattern=12 {sprite_index=zshuri}
    if pattern=13 {sprite_index=zshuri}
    
    image_index=0
    pattern+=1
    if pattern>=13 {pattern=0}
}

if sprite_index=ztele && paravel=1 {sprite_index=zshuri}

if sprite_index=zshuri
{
	if paravel=0
	{
		if instance_exists(obj_geemel_shuriken) or instance_exists(obj_geemel_shuriken2)
		{sprite_index=zjump; vsp=-6; hsp=choose(2,3)*dir; pattern-=1}
	}
	
	if paravel=1
	{
		if instance_exists(obj_geemel_shuriken)
		{sprite_index=zexplo}
	}
}

if sprite_index=zjump && paravel=0 && !instance_exists(obj_paravel) && global.bosshp<15 {instance_create_depth(x,y,depth+1,obj_paravel)}
}
else
{
	if instance_exists(obj_paravel) {obj_paravel.out=1; paravel=0; sprite_index=zjump; image_index=0; vsp=-1}
}