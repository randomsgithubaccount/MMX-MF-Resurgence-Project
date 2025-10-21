for (ded=0 ; ded<360 ; ded+=45)
    {
    a = instance_create_depth(x,y,depth,partdeadeff)
    a.speed = 7
    a.direction = ded
    }

action_set_alarm(10, 0);
