if instance_exists(playerparent) {image_speed=0.05}
else {image_speed=0}

if instance_exists(playerparent)
{
if playerparent.x>x
{image_xscale=-1}
else {image_xscale=1}
}

if helped=1
{
alarm[0]=60
helped=2
}

if sprite=0
{
sprite_index=choose(spr_help_yellow,spr_help_red,spr_help_blue,spr_help_green,spr_help_new1,spr_help_new2,spr_help_new3)
sprite=1
}

