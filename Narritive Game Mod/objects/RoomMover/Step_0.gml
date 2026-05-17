x_jones += 2;
y_in += 2;
y_title -= 2;
y_space -= 2;


	
if (x_jones >= 100) {x_jones = 100}
if (y_in >= 270) {y_in = 270}
if (y_title <= 300) {y_title = 300}
if (y_space <= 720) {y_space = 720}

	if(keyboard_check_pressed(vk_space) && y_space == 720) 
	{
		room_goto_next();
		audio_stop_sound(Main_Menu_Sound);
		
		x_jones = -310;
		y_in = -140;
		y_title = 1200;
		y_space = 1680;
		num = 0;
	}
	