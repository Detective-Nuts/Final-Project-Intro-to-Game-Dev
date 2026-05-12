if (ySpd > 0)
{
    sliding = true;

	if(keyboard_check_pressed(vk_space) && sliding)//&& (keyboard_check_pressed(ord("A"))))
	{
		audio_play_sound(Jump_Sound,1,false);
		xSpd = 0;
		wallJumping = true;
		grounded = false;
		wallJumpTimer = wallJumpHoldFrames
		wallJumpDir = 1;
		
		var PartSys = part_system_create(JumpSlide);
		part_system_position(PartSys,x - 35, y - 2);
		
		nomoving = true;
	}	
}