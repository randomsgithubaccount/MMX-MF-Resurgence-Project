/// @description scr_draw_laser(spr-top,spr-beam,spr-bottom,x,y,direction)
/// @param spr-top
/// @param spr-beam
/// @param spr-bottom
/// @param x
/// @param y
/// @param direction
function scr_draw_laser() {

	var xx=argument[3]
	var yy=argument[4]

	var angle=argument[5]
	var length=0
	var damage=argument[6]

	while (!collision_point(xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),parSolid,true,true))
	{
		length++
	}

	draw_sprite_ext(argument[1],image_index,xx,yy,length,image_yscale,angle,c_white,1)
	draw_sprite_ext(argument[0],image_index,x,y,image_yscale,image_yscale,angle,c_white,1)
	draw_sprite_ext(argument[2],image_index,x+lengthdir_x(length,angle),y+lengthdir_y(length,angle),1,image_yscale,angle,c_white,1)

	if damage=1
	{
		if collision_line(x,y,x+lengthdir_x(length,angle),y+lengthdir_y(length,angle),playerparent,true,true) 
		{
			with(playerparent)
			{
				if (sprite_index=zhurt or sprite_index=zdash2) or inmune=1 or global.canmove=0 or global.canmove=10
				{}
				else
				{
					damage=1; scr_damage(); global.canmove=0
				}
			}
			instance_destroy()
		}
	}


}
