
if instance_exists(nearestene)
{
nearestene=instance_nearest(x,y,parenemy)
    if countdir=0
    {
        if nearestene.y<y {up=0; down=1; left=0; right=0} else if nearestene.y>y {up=1; down=0; left=0; right=0} else {up=0; down=0; left=0; right=0}
    }
    else if countdir=1
    {
        if nearestene.x<x {up=0; down=0; left=1; right=0} else if nearestene.x>x {up=0; down=0; left=0; right=1} else {up=0; down=0; left=0; right=0}
    }
    countdir+=1
    if countdir=2 {countdir=0}
}

