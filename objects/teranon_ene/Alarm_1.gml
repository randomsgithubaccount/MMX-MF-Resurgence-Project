/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


mis=instance_create_depth(x+48*-dir,y-20,depth-1,homming_teranon);
if dir=1
{
mis.direction=135
}

if dir=-1
{
mis.direction=45
}

instance_create_depth(x+10*-dir+random_range(-6,6),y+random_range(-6,6),depth-1,smokeobj)
