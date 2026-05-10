if (ySpd > 0)
{
    sliding = true;

	if(keyboard_check_pressed(vk_space) && sliding)//&& (keyboard_check_pressed(ord("A"))))
	{
		audio_play_sound(Jump_Sound,1,false);
		wallJumping = true;
		grounded = false;
		wallJumpTimer = wallJumpHoldFrames
	}	
	





}