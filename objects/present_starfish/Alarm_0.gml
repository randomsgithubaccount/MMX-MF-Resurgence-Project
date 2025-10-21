/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
go=1
dist=100
ef=instance_create_depth(x-dist,y-dist,depth,obj_sombrapreset)
ef.target=self
ef.sprite_index=sprite_index
ef=instance_create_depth(x+dist,y-dist,depth,obj_sombrapreset)
ef.target=self
ef.sprite_index=sprite_index
ef=instance_create_depth(x-dist,y+dist,depth,obj_sombrapreset)
ef.target=self
ef.sprite_index=sprite_index
ef=instance_create_depth(x+dist,y+dist,depth,obj_sombrapreset)
ef.target=self
ef.sprite_index=sprite_index