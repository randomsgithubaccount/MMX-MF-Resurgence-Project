function scr_droop() {
	money=choose(1,2,3,4,5,6,7,8);
	items=choose(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15);

	if items=1
	{instance_create_depth(x,y-(sprite_height/3),depth,objHealBig);}
	if items=2
	{instance_create_depth(x,y-(sprite_height/3),depth,objHeal);}
	if items=3
	{instance_create_depth(x,y-(sprite_height/3),depth,objHeal);}
	if items=4
	{instance_create_depth(x,y-(sprite_height/3),depth,objEner);}
	if items=5
	{instance_create_depth(x,y-(sprite_height/3),depth,objEner);}
	if items=6
	{instance_create_depth(x,y-(sprite_height/3),depth,objEnerBig);}

	if money=1
	{
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	}
	if money=2
	{
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	}
	if money=3
	{
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	}
	if money=4
	{
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	}
	if money=5
	{
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	}
	if money=6
	{
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	instance_create_depth(x,y-(sprite_height/3),depth,objMoney);
	}



}
