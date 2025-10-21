if(global.xhp>hMax) global.xhp = hMax;
if(global.thp>hMax) global.thp = hMax;

/*
The drawing script doesn't trim the health itself,
just the value used to tell how much to draw, so this is controlled here.
*/

health=global.xhp

if global.xhp<=0 {global.xhp=0}
if global.thp<=0 {global.thp=0}

/* */
/*  */
