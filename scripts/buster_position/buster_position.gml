function buster_position() {

	if playerparent.sprite_index=playerparent.zstand or playerparent.sprite_index=playerparent.zstandS
	{
	if playerparent.dir=-1 {x=playerparent.x-13; y=playerparent.y-22}
	if playerparent.dir=1 {x=playerparent.x+13; y=playerparent.y-22}
	}

	if playerparent.sprite_index=playerparent.zrun or playerparent.sprite_index=playerparent.zrunS
	{
	if playerparent.dir=-1 {x=playerparent.x-18; y=playerparent.y-22}
	if playerparent.dir=1 {x=playerparent.x+18; y=playerparent.y-22}
	}

	if playerparent.sprite_index=playerparent.zdash or playerparent.sprite_index=playerparent.zdashS
	{
	if playerparent.dir=-1 {x=playerparent.x-28; y=playerparent.y-14}
	if playerparent.dir=1 {x=playerparent.x+28; y=playerparent.y-14}
	}

	if playerparent.sprite_index=playerparent.zsit or playerparent.sprite_index=playerparent.zsitS
	{
	if playerparent.dir=-1 {x=playerparent.x-18; y=playerparent.y-14}
	if playerparent.dir=1 {x=playerparent.x+18; y=playerparent.y-14}
	}

	if playerparent.sprite_index=playerparent.zsitup or playerparent.sprite_index=playerparent.zsitupS
	{
	if playerparent.dir=-1 {x=playerparent.x-18; y=playerparent.y-12}
	if playerparent.dir=1 {x=playerparent.x+18; y=playerparent.y-12}
	}

	if playerparent.sprite_index=playerparent.zjump or playerparent.sprite_index=playerparent.zjumpS
	{
	if playerparent.dir=-1 {x=playerparent.x-18; y=playerparent.y-23}
	if playerparent.dir=1 {x=playerparent.x+18; y=playerparent.y-23}
	}

	if playerparent.sprite_index=playerparent.zwall or playerparent.sprite_index=playerparent.zwallS
	{
	if playerparent.dir=1 {x=playerparent.x-18; y=playerparent.y-11}
	if playerparent.dir=-1 {x=playerparent.x+18; y=playerparent.y-11}
	}




}
