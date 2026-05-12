y -= 1;

if(keyboard_check_pressed(vk_space)) 
{
	audio_stop_sound(story_Sound);
	room_goto_next();
}
	