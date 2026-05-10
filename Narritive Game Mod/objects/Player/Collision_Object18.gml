if (ySpd > 0 && keyboard_check(ord("A"))) || ySpd > 0 && keyboard_check(ord("D"))
{
sliding = true;

	if(keyboard_check_pressed(vk_space) && keyboard_check(ord("A")))
	{
	 xSpd = -20;
	}
	
	if(keyboard_check_pressed(vk_space) && keyboard_check(ord("D")))
	{
	 xSpd = 20;
	}
}

