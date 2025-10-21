/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//draw_sprite(fond_wepget,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])-65+ypos)
//draw_sprite_ext(fond_wepget,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+65+224-ypos,1,-1,0,c_white,1)
if effects=0 
{
	draw_sprite(back_mavsel,0,0,0)
	draw_set_color(c_black)
	if dib=1
	{
		gpu_set_fog(1,c_black,0,0)
		draw_sprite_ext(maverick_art,0,camera_get_view_x(view_camera[0])+(352/2),camera_get_view_y(view_camera[0])+(224/2)-1,1.5,1.5,0,c_white,1)
		draw_sprite_ext(maverick_art,0,camera_get_view_x(view_camera[0])+(352/2),camera_get_view_y(view_camera[0])+(224/2)+1,1.5,1.5,0,c_white,1)
		draw_sprite_ext(maverick_art,0,camera_get_view_x(view_camera[0])+(352/2)+1,camera_get_view_y(view_camera[0])+(224/2),1.5,1.5,0,c_white,1)
		draw_sprite_ext(maverick_art,0,camera_get_view_x(view_camera[0])+(352/2)-1,camera_get_view_y(view_camera[0])+(224/2),1.5,1.5,0,c_white,1)
		gpu_set_fog(0,c_black,0,0)
	}
	draw_set_color(c_white)
}

draw_set_color(c_black)
draw_set_alpha(baralp)
if dib=1
{
	if effects=1
	{
	draw_sprite_ext(maverick_art,0,camera_get_view_x(view_camera[0])+(352/2)-ypos2+site,camera_get_view_y(view_camera[0])+(224/1.3),2,2,0,c_white,0.5)
	}
	
	draw_line(camera_get_view_x(view_camera[0])-2,camera_get_view_y(view_camera[0])+(224/2)+round(ybar)+2,camera_get_view_x(view_camera[0])+355,camera_get_view_y(view_camera[0])+(224/2)+round(ybar)+2)	
	draw_line(camera_get_view_x(view_camera[0])-2,camera_get_view_y(view_camera[0])+(224/2)-round(ybar)-2,camera_get_view_x(view_camera[0])+355,camera_get_view_y(view_camera[0])+(224/2)-round(ybar)-2)
	draw_rectangle(camera_get_view_x(view_camera[0])-2,camera_get_view_y(view_camera[0])+(224/2)-round(ybar),camera_get_view_x(view_camera[0])+355,camera_get_view_y(view_camera[0])+(224/2)+round(ybar),false)
}
draw_set_alpha(1)
draw_set_color(c_white)

if effects=1
{
	
/// DIBUJO
draw_sprite_ext(maverick_art,0,camera_get_view_x(view_camera[0])+(352/2)+ypos2-site,camera_get_view_y(view_camera[0])+(224/2),1,1,0,c_white,alph)

gpu_set_fog(1,c_black,0,0)
draw_sprite_ext(maverick_art,0,camera_get_view_x(view_camera[0])+(352/2)-ypos2-site,camera_get_view_y(view_camera[0])+(224/2),1,1,0,c_white,alph2)
draw_sprite_ext(maverick_art,0,camera_get_view_x(view_camera[0])+(352/2)+ypos2-site,camera_get_view_y(view_camera[0])+(224/2),1,1,0,c_white,alph2)
gpu_set_fog(0,c_black,0,0)
}
else
{
	gfont = font_add_sprite_ext(spr_giantfont, "abcdefghijklmnopqrstuvwxyz",true, 1);
	draw_set_colour(c_white);
	draw_set_font(gfont);
	draw_set_halign(fa_center);
	draw_text(camera_get_view_x(view_camera[0])+(352/2),camera_get_view_y(view_camera[0])+(224/2)+48,string(maverick_name))
}