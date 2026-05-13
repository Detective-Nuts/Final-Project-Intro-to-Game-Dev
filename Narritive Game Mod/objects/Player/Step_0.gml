// this happens every frame
depth = -y;


if (sprite_index = sprite_player_walk_side && XTotalSpeed = 0) {image_index	= 1}


move_and_collide(XTotalSpeed,0,[my_tilemap,Door])

move_and_collide(0,ySpd,[my_tilemap,Door])
	
if (!place_meeting(x,y,obj_WallJumperLeft)) 
{
	sliding = false;
	audio_stop_sound(WallSlide_Sound);
	nowalljumpsound = true;
	
}
if (!place_meeting(x,y,obj_WallJumperRight)) 
{
	slidingRight = false;
	audio_stop_sound(WallSlide_Sound_2);
	nowalljumpsoundRight = true;
}



#region idfk
//if (distance_to_object(Door < 150) 

if (key && distance_to_object(Door) < 8)
{
	instance_deactivate_object(Door)
	if(fatty)
	{
		audio_play_sound(Door_Sound,0,0);
		instance_create_layer(Door_OPEN.x-150,Door_OPEN.y-140, "dialouge",Dialogue);
		current_message = "NPC4";

		fatty = false;
	}
}

if(instance_exists(Player) && distance_to_object(Door) < 300)
{ 
		if(near_Door)
		{
			if(instance_exists(Dialogue))
			{
			instance_destroy(Dialogue)	
			}
			instance_create_layer(Door_OPEN.x-150,Door_OPEN.y-140,"dialouge",Dialogue);
		
			current_message = "NPC3";
			near_Door = false;
		}
}

if(instance_exists(Player) && distance_to_object(NPC) < 8 && keyboard_check_pressed(ord("E")))
{ 

		if(instance_exists(Dialogue))
		{
			instance_destroy(Dialogue)	
		}
		instance_create_layer(x-150,y-180,"dialouge",Dialogue);
		
		current_message = "NPC1";
		
}

if(instance_exists(Player) && distance_to_object(NPC_2) < 8 && keyboard_check_pressed(ord("E")))
{ 

		if(instance_exists(Dialogue))
		{
			instance_destroy(Dialogue)	
		}
		instance_create_layer(x-150,y-180,"dialouge",Dialogue);
		
		current_message = "NPC2";
}

if(instance_exists(Player) && distance_to_object(NPC_3) < 8 && keyboard_check_pressed(ord("E")))
{ 

		if(instance_exists(Dialogue))
		{
			instance_destroy(Dialogue)	
		}
		instance_create_layer(x-150,y-180,"dialouge",Dialogue);
		
		current_message = "NPC6";
}



if(current_message == "NPC2")
{
	if(distance_to_object(NPC_2) > 10)
	{
		instance_destroy(Dialogue);	
	}
}

if(current_message == "NPC1")
{
	if(distance_to_object(NPC) > 10)
	{
		instance_destroy(Dialogue);	
	}
}

#endregion

#region Keyboard
	
	if(xSpd >= 5) {xSpd = 5}
	if(xSpd <= -5) {xSpd = -5}

	

	if(keyboard_check(ord("D")) && !slidingRight)
	{
		
		image_xscale = 1;
		image_speed = 1;
		sprite_index = sprite_player_walk_side;
		
		xSpd += xAcelleration;		
		

	}
	if(keyboard_check_released(ord("D")))
	{
		image_speed = 0;
		image_index = 1;
	}


{
	if(keyboard_check(ord("A")) && !sliding)
	{
		//show_debug_message(wallJumpTimer);
		image_xscale = -1;
		image_speed	= 1;
		sprite_index = sprite_player_walk_side; 
		
		xSpd -= xAcelleration;		
		

		
	}
		if(keyboard_check_released(ord("A")))
	{
		image_speed = 0;
		image_index = 1;
	}
	if(!keyboard_check(ord("A")) && !keyboard_check(ord("D")))
	{
	 xSpd *= 0.6
	}
}
#endregion

#region Jump

	ySpd += grav;
	
		if (grounded)
	{
		grav = 0;
		ySpd = 0;

	}

	if(keyboard_check_pressed(vk_space) && grounded && !falling )//|| sliding && keyboard_check_pressed(vk_space))
	{
		audio_play_sound(Jump_Sound,1,false);
		jumping = true;
		grounded = false;
		jumpTimer = jumpHoldFrames
	}	
	
	if (jumping && jumpTimer >= 0 || sliding || slidingRight)
	{
		
		ySpd = jumpSpd;
		grounded = false;
		jumpTimer --;
	}


	if (keyboard_check_released(vk_space) || jumpTimer <= 0)
	{
	jumping = false;
	falling = true;
	}


	if (place_meeting(x,y+5,[my_tilemap,Door]))
	{ 
 
	grounded = true;
	falling = false;
	}
	else 
	{
	falling = true;	
	grounded = false
	}
	
	if (falling && sliding && !jumping || falling && slidingRight && !jumping)
	{
		ySpd = slide_grav;
	}

	else if (falling && !sliding || falling && !slidingRight)
	{

		grav = 0.5;
		
		if(sliding)
		{
			image_xscale = 1;
			sprite_index = sprite_player_sliding;
		}
		else if(slidingRight)
		{
			image_xscale = -1;
			sprite_index = sprite_player_sliding;
		}
	}


	if (ySpd >= Max_Yspd && !sliding || ySpd >= Max_Yspd && !slidingRight) {ySpd = Max_Yspd}
	
		if (sliding)
		{
			var PartSys = part_system_create(Slide);
			part_system_position(PartSys,x - 30, y - 16);
		
		image_xscale = 1;
		sprite_index = sprite_player_sliding;
		}
		else if(slidingRight)
		{
			image_xscale = -1;
			sprite_index = sprite_player_sliding;
			var PartSys = part_system_create(Slide);
			part_system_position(PartSys,x + 15, y - 16);
		}
	
	else if (jumping || falling) {sprite_index = sprite_player_jump}
	

		
	else {sprite_index = sprite_player_walk_side}
	
#endregion
#region Walljumping Left
	if (wallJumping && wallJumpTimer > 0)
{
    ySpd = jumpSpd;
    xJumpSpd = wallJumpDir * 5;

    wallJumpTimer--;

    if (keyboard_check_released(vk_space))
    {
        wallJumping = false;
    }
}
else
{
    wallJumping = false;
    xJumpSpd = lerp(xJumpSpd, 0, 0.15);
}
	XTotalSpeed = xJumpSpd + xSpd;
	
	if (XTotalSpeed > 6.5) XTotalSpeed = 6.5;
	if (XTotalSpeed < -6.5) XTotalSpeed = -6.5;
#endregion	
if (xSpd > 0 && sprite_index != sprite_player_sliding ) {image_xscale = 1}
if (xSpd < 0 && sprite_index != sprite_player_sliding ) {image_xscale = -1}
