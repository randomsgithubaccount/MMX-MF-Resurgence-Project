if instance_exists(View)
{
View.top=top
View.bottom=bottom
View.left=left
View.right=right

    i=0
    repeat(7) 
    {
    View.backy_speed[i]=backy_speed[i]; 
    View.backy_move[i]=backy_move[i]; 
    View.backx_speed[i]=backx_speed[i]; 
    View.backx_move[i]=backx_move[i]; 
    i++
    }
}

base_darkness=alpha

if change=1
{
View.change=1
View.back0=back0
View.back1=back1
View.back2=back2
View.back3=back3
View.back4=back4
View.back5=back5
View.back6=back6
View.back7=back7
}

