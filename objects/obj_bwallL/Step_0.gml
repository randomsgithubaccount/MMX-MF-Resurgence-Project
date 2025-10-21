with (other) {
if x>targetx {x-=1}
if x<targetx {x+=1}

if distance_to_object(spike_turtloid)<5 {spike_turtloid.x+=2}

if status=0
{
targetx=objspawnwall.x
}

if status=1
{
targetx=objspawnwall.x+16
}

if status=2
{
targetx=objspawnwall.x+32
}

if status=3
{
targetx=objspawnwall.x+48
}

}
