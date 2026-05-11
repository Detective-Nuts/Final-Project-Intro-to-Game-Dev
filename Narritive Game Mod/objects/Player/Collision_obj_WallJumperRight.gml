if (ySpd > 0)
{
    slidingRight = true;

	if(keyboard_check_pressed(vk_space) && slidingRight)//&& (keyboard_check_pressed(ord("A"))))
	{
		audio_play_sound(Jump_Sound,1,false);
		xSpd = 0;
		wallJumping = true;
		grounded = false;
		wallJumpTimer = wallJumpHoldFrames
		wallJumpDir = -1;
		
		nomoving = true;
		//Player.wallJumpControlLock = 8;
	}	
}