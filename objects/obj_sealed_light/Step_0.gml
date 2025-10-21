hit=y+5
if init=0
{
i=0
    repeat(sealed)
    {
    block[i]=instance_create_depth(x,y,depth,obj_sealed_lightb)
    site[i]=y+i*16
    i+=1
    }
    init=1
}

i=0
repeat(sealed)
{
if instance_exists(block[i])
{
if open_lightdoors=0 {block[i].y+=lineal_move(block[i].y,site[i],4)}
if open_lightdoors=1 {block[i].y+=lineal_move(block[i].y,y,4)}
}
i+=1
}

