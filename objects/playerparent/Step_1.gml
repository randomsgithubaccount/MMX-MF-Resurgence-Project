if !place_meeting(x,y+4,parSolid)  {if place_meeting(x,y+4,obj_ghostSolid) {if ctrl.down && ctrl.jump_pressed {y+=4}}}
if (place_meeting(x, y, obj_lodoBlock)) {runspeed=0.5; lodo=1} else {if lodo=1 {runspeed=1.5; lodo=0}}

if slow=1
{room_speed=lerp(room_speed,20,0.1)}
if slow=2
{room_speed=lerp(room_speed,30,0.1)}
if slow=0 
{room_speed=60}

if instance_exists(parWater)
{
if bbox_bottom>parWater.bbox_top && inwater=0 {spl=instance_create_depth(x,y,depth,watersplash); sound_effect=SFX_waterspl ; inwater=1}
if bbox_bottom<parWater.bbox_top && inwater=1 {spl=instance_create_depth(x,y,depth,watersplash); sound_effect=SFX_waterspl ; inwater=0}
if bbox_bottom>parWater.bbox_top && oWater.poisonous=1 {poison=40}

if instance_exists(spl2) {spl2.x=playerparent.x}
else
{
if y>=parWater.y and y<=parWater.y+parWater.areay 
{spl2=instance_create_depth(x,y,depth,waterstand); spl2.x=playerparent.x}
}
if bbox_top>parWater.bbox_bottom {if alarm[5]<1 {alarm[5]=random(40)}}
}

if distance_to_object(obj_bwallL)<5
{global.xhp=0}
if distance_to_object(obj_bwallR)<5
{global.xhp=0}

if global.canmove=2
{
    if instance_exists(MegamanX)
    {
    if sprite_index=zjumpS {image_index=image_index; image_speed=0}
    if sprite_index=zdashS && image_index>2 {image_index=image_number-3}
    if sprite_index=zjump {image_index=image_index; image_speed=0}
    if sprite_index=zdash && image_index>2 {image_index=image_number-3}
    }
    
    if instance_exists(Zero)
    {
    if sprite_index=zjump {image_index=image_index; image_speed=0}
    if sprite_index=zdash && image_index>2 {image_index=image_index; image_speed=0}
    }
    
    if instance_exists(Axl)
    {
    if sprite_index=zjump {image_index=image_index; image_speed=0}
    if sprite_index=zdash && image_index>2 {image_index=image_number-5}
    }
    if instance_exists(Vile)
    {
    if sprite_index=zjump {image_index=image_index; image_speed=0}
    }
}

if mouse_check_button(mb_left) {x=mouse_x; y=mouse_y}

//XRAY

ob_lighting.x = x + dir*3;
ob_lighting.y = y - 24;
  
oldDir=dir

///DAÑOS
//collide=collision_rectangle(bbox_left+4,bbox_top+4,bbox_right-4,bbox_bottom-4,parSolid,true,false)

if place_meeting(x,y,obj_acidgota) {poison=30}
if place_meeting(x,y,obj_moquitacid) {poison=40}
if place_meeting(x,y,obj_radrain) {poison=50}
if place_meeting(x,y,acidanim) {poison=60}

if (sprite_index=zhurt or sprite_index=zdash2) or inmune=1 or global.canmove=0 or global.canmove=10
{}
else
{
		if instance_exists(ride_turtle) or instance_exists(ride_mantis)
		{
		if crushing>=5 {damage=99; scr_damage_turtle(); global.canmove=0}
		if place_meeting(x,y,parenemy) {damage=1; scr_damage_turtle()}
		if place_meeting(x,y,enedmgparent) {damage=1; scr_damage_turtle()}
		if place_meeting(x,y,enedmgparent,) {damage=1; scr_damage_turtle()}
		if place_meeting(x,y,enedmgparent_end) {damage=1; scr_damage_turtle()}
		if place_meeting(x,y,bossdmgpar) {damage=2; scr_damage_turtle()}
		if place_meeting(x,y,bossparent) {damage=2; scr_damage_turtle()}
		}
		else
		if instance_exists(ride_armor)
		{
		if crushing>=5 {damage=99; scr_damage_turtle(); global.canmove=0}
		if place_meeting(x,y,parenemy) {damage=1; scr_damage_turtle()}
		if place_meeting(x,y,enedmgparent) {damage=1; scr_damage_turtle()}
		if place_meeting(x,y,enedmgparentn) {damage=1; scr_damage_turtle()}
		if place_meeting(x,y,enedmgparent_end) {damage=1; scr_damage_turtle()}
		if place_meeting(x,y,bossdmgpar) {damage=2; scr_damage_turtle()}
		if place_meeting(x,y,bossparent) {damage=2; scr_damage_turtle()}
	}
	else
	{
		if crushing>=5 {damage=99; scr_damage(); global.canmove=0}
		if place_meeting(x,y,parenemy) {damage=1; scr_damage(); global.canmove=0}
		if place_meeting(x,y,enedmgparent) {damage=1; scr_damage(); global.canmove=0}
		if place_meeting(x,y,enedmgparentn) {damage=1; scr_damage(); global.canmove=0}
		if place_meeting(x,y,enedmgparent_end) {damage=1; scr_damage(); global.canmove=0}
		if place_meeting(x,y,bossdmgpar) {damage=2; scr_damage(); global.canmove=0}
		if place_meeting(x,y,bossparent) {damage=3; scr_damage(); global.canmove=0}
	}
}

if place_meeting(x,y,falldead) {global.xhp-=99}

/// STATUS

if poison>0
{
poison-=0.1
count_poison+=0.1
count_dmg+=0.1
poison_draw+=15
if poison_draw>=360 {poison_draw=0}
alpha_poison=lengthdir_x(1,poison_draw)
xcenter=sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index);
ycenter=sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);
if count_poison>=1.2 {pbu=instance_create_depth(bbox_left+random(xcenter),bbox_top+random(ycenter),depth,poison_bubble); pbu.angle=random(360); count_poison=0}
if count_dmg>=10 {global.xhp-=1; sound_effect=sfx_swlengua; count_dmg=0}
}
else
{
if alpha_poison!=0 {alpha_poison=lineal_move(alpha_poison,0,0.05)}
}

x=max(x,0)
x=min(x,room_width)
y=max(y,-32)