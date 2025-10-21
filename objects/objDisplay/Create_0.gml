
back_img=sprite_add("backup_img.png",0,0,0,0,0);

window_set_size(VIEWSIZE_X,VIEWSIZE_Y)
global.gameWidth = VIEWSIZE_X;
global.gameHeight = VIEWSIZE_Y;
global.sizemulti=4

surface_resize(application_surface,global.gameWidth*global.sizemulti,global.gameHeight*global.sizemulti);

