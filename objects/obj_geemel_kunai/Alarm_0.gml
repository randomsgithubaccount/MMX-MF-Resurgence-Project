/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
bmb=instance_create_depth(x,y,depth-1,obj_geemel_bombs)
bmb.vsp=-4
bmb.hsp=0.8

bmb2=instance_create_depth(x,y,depth-1,obj_geemel_bombs)
bmb2.vsp=-4
bmb2.hsp=-0.8

instance_create_depth(x,y,depth-1,expob2)
instance_destroy()