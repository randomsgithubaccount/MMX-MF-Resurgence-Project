if sprite_index=spr_drilldark_enet {sprite_index=spr_drilldark_enes; image_index=0; a=instance_create_depth(x+20*dir,y,depth,drilldark_sht); a.dir=dir}
if sprite_index=spr_drilldark_load {sprite_index=spr_drilldark_ene; image_index=0}
if sprite_index=spr_drilldark_ene
{
if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}
}

if sprite_index=spr_drilldark_enes
{
if can=0 {sprite_index=spr_drilldark_load; image_index=0}
if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}
counter2+=1
if counter2>=4 {can=0; counter2=0}
}

