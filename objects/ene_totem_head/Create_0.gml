init_enemy()
grv_speed=0
enehp=2
parts=spr_gtotem_hparts
destroy_time=20
destroy_effect=0
target=0
startx=x
starty=y
xx=x
yy=y
start_spawner=1
basehp=enehp
image_speed=0.2
base_created=0
fly=0
indexer=0

totaltotems=0
totems=1

repeat(20)
{
if !place_meeting(x,y+(16*totems)+1,parSolid) {tot[totems]=instance_create_depth(x,y+16*totems,depth,ene_totem_body); totems++; totaltotems++}
else {tot[totems]=instance_create_depth(x,bbox_bottom+(16*totems),depth,ene_totem_body); break;}
}


i=1
repeat(totems)
{
    dest[totems]=false
    i++
}


