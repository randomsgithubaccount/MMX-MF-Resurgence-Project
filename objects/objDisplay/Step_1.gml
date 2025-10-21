if (window_get_width() != global.gameWidth*global.sizemulti or window_get_height() != global.gameHeight*global.sizemulti)
{
	window_set_size(global.gameWidth*global.sizemulti, global.gameHeight*global.sizemulti)
	surface_resize(application_surface,global.gameWidth*global.sizemulti,global.gameHeight*global.sizemulti)
	display_set_gui_size(global.gameWidth,global.gameHeight)
	window_center()
}

if (display_get_width() != global.gameWidth*global.sizemulti or display_get_height() != global.gameHeight*global.sizemulti)
{
	display_set_gui_size(global.gameWidth*global.sizemulti, global.gameHeight*global.sizemulti)
	surface_resize(application_surface,global.gameWidth*global.sizemulti,global.gameHeight*global.sizemulti)
	display_set_gui_size(global.gameWidth,global.gameHeight)
}