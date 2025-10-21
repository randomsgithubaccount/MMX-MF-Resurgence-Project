sound_effect=sfx_money 
if sprite_index=sprMoney1
{global.metalmoney+=5}
if sprite_index=sprMoney2
{global.metalmoney+=10}
if sprite_index=sprMoney3
{global.metalmoney+=30}
if sprite_index=sprMoney4
{global.metalmoney+=100}
DrawMoney.moneyalph=1
DrawMoney.can=0

action_kill_object();
