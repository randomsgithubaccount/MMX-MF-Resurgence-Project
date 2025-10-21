if atk=1
{
if distance_to_object(playerparent)<400
{
image_speed=0.3 
for (ded=0 ; ded<360 ; ded+=180)
    {
    a = instance_create_depth(x,y,depth,plantpua)
    a.speed = 7
    a.direction = ded
    a.image_angle = ded
    }
sound_effect=sfx_plantbox
}
atk=0
}

if alarm[0]<1 {alarm[0]=random(50); atk=0}
image_speed=0.1


