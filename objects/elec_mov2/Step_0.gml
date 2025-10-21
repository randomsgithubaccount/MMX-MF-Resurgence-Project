
var gridW = 16;
var gridH = 16;

var ldx = 0;
var rdx = 16;
var tdy = 0;
var bdy = 16;

if alarm[0]<1 {alarm[0]=150} 

repeat(4)
{
var t = abs(spd);
while t > 0 {
    var d;
    switch (dir + (1 - sign(spd)) * 90) % 360 {
    case 0:
        d = min(t, floor((x - ldx) / gridW + 1) * gridW - (x - ldx), floor((x + rdx) / gridW + 1) * gridW - (x + rdx));
        break;
    case 90:
        d = min(t, (y - tdy) - ceil((y - tdy) / gridH - 1) * gridH, (y + bdy) - ceil((y + bdy) / gridH - 1) * gridH);
        break;
    case 180:
        d = min(t, (x - ldx) - ceil((x - ldx) / gridW - 1) * gridW, (x + rdx) - ceil((x + rdx) / gridW - 1) * gridW);
        break;
    case 270:
        d = min(t, floor((y - tdy) / gridH + 1) * gridH - (y - tdy), floor((y + bdy) / gridH + 1) * gridH - (y + bdy));
        break;
    }
    t -= d;
    
    var b = true;
    if place_meeting(floor(x + lengthdir_x(sign(spd), dir)), floor(y + lengthdir_y(sign(spd), dir)), parSolid) {
        dir = (dir + (2 - sign(spd)) * 90) mod 360;
        b = false;
    } else if fpixel <= 0 && !place_meeting(floor(x + dcos(dir - 90)), floor(y - dsin(dir - 90)), parSolid) {
        dir = (dir + (2 + sign(spd)) * 90) mod 360;
        fpixel = 1;
    }
    if b {
        x += lengthdir_x(d * sign(spd), dir);
        y += lengthdir_y(d * sign(spd), dir);
        fpixel -= d;
    }
}
}

if out=-1
{
    if spd=1
    {
    if place_meeting(x,y,parSolid) && stuck<4
    {
    move_outside_all(180, 1);
    stuck+=1
    }
    }
    if spd=-1
    {
    if place_meeting(x,y,parSolid) && stuck<4
    {
    move_outside_all(0, 1);
    stuck+=1
    }
    }
}
else
{
    if place_meeting(x,y,parSolid) && stuck<4
    {
    move_outside_all(90, 1);
    stuck+=1
    }
}


