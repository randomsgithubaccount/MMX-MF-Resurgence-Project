image_speed=0
contador += 0.5;

vspeed+=0.3
if vspeed>4 {vspeed=4}

if go=0
{
i=0
repeat(part_frame)
{
part[i]=instance_create_depth(x+random_range(-10,10),y+random_range(-10,10),depth,parent_parts2)
part[i].sprite_index=sprite
part[i].image_index=i
i+=1
}
go=1
}

