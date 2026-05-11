if (ySpd > 0)
{
    slidingRight = true;

	if(keyboard_check_pressed(vk_space) && slidingRight)//&& (keyboard_check_pressed(ord("A"))))
	{
		show_debug_message("hi")
		audio_play_sound(Jump_Sound,1,false);
		wallJumpingRight = true;
		grounded = false;
		wallJumpRightTimer = wallJumpRightHoldFrames
	}	
}