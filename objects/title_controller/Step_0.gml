scr_controls();

select -= key_up_p;
select += key_down_p;
if select > 2 {select = 0;}
if select < 0 {select = 2;}
	
if (key_up_p || key_down_p)
{
	//scr_audio("tap");
}

if (key_act_p)
{
	//scr_audio("select");
	
	if (select == 0)
	{
		room_goto(room + 1);
	}
	
	if (select == 1)
	{
		//controls_screen = !controls_screen;
	}
	
	if (select == 2)
	{
		game_end();
	}
}
