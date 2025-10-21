if (pos < string_length(currentstr)) 
{
    if right=0
    {
      pos += typespeed / room_speed;
      if alarm[1]<1 {alarm[1]=4}
      mugsprite_char=spr_mugchar_habla
      mugsprite_mav=spr_mugshot
    }
    if right=1
    {
      pos += typespeed / room_speed;
      if alarm[1]<1 {alarm[1]=4}
      
      mugsprite_mav=spr_mugshot_habla
      mugsprite_char=spr_mugchar
    }
}
else 
{
    if right=0
    {
    mugsprite_mav=spr_mugshot
    }
    if right=1
    {
    mugsprite_char=spr_mugchar
    }
}

if (pos > string_length(currentstr)) 
{
  if (pos < string_length(currentstr)) 
  {
    pos += typespeed / room_speed;
  }
  alarm[0] = room_speed / typespeed * 3;
} 
else {alarm[0] = 1;}

