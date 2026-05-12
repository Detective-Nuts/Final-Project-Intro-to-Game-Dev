y --;
y_thanks --;

if(keyboard_check_pressed(vk_space)) 
{
	audio_stop_sound(Ending_Sound);
	room_goto(Title);
}

if (y_thanks <= room_height/2 - 200) {y_thanks = room_height/2 - 200}
	