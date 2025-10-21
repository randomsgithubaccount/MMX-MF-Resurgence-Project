image_speed=0.1
can_move=1
fric=0
vfric=0

top=0
right=0
left=0
bottom=0

topl=0
rightl=0
leftl=0
bottoml=0
closed=0
dir=0

spr=1
if spr=1
{
zdoor=s_door2
zdooro=s_dooropen2
zdoorc=s_doorclose2
}

sprite_index=zdoor

if instance_exists(playerparent)
{
	if playerparent.x>x {dir=-1}
	else {dir=1}
}

