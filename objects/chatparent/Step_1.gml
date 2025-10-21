global.canmove=0

if chatsize=round(__view_get( e__VW.XView, 0 )+352-outline)
{
//This checks if it should skip 'till the end of the current string, or jump to the next one, or end game if we reached the last string
if ctrl.shot_pressed 
{
  if (pos < string_length(currentstr)) 
  {
  pos = string_length(currentstr);
  } 
  else 
  {
    if (strnumb < strmaxnumb) 
    {
      chats+=1
      strnumb += 1;
      currentstr = str[strnumb];
      pos = 0;
    } 
    else {instance_destroy();}
  }
}

animation+=0.3
if animation>7 {animation=0}
if alarm[0]<1 {alarm[0]=1}
}

