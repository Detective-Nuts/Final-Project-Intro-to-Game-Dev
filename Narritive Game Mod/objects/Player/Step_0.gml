// this happens every frame
depth = -y;
XTotalSpeed = xJumpSpd + xSpd;
move_and_collide(xSpd,0,[my_tilemap,Door])

move_and_collide(0,ySpd,[my_tilemap,Door])
//	show_debug_message(ySpd);
//make another tile map set
//show_debug_message(xSpd);
if (!place_meeting(x,y,Object18)) {

	sliding = false;
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
	show_debug_message(xJumpSpd);
	

	if(keyboard_check(ord("D")))
	{
		image_xscale = 1;
		image_speed = 1;
		sprite_index = sprite_player_walk_side;
		
		xSpd += xAcelleration;		
		
		//move_and_collide(xSpd,0,[my_tilemap,Door])
	}
	if(keyboard_check_released(ord("D")))
	{
		image_speed = 0;
		image_index = 1;
	}


{
	if(keyboard_check(ord("A")))
	{
		
		image_xscale = -1;
		image_speed	= 1;
		sprite_index = sprite_player_walk_side; 
		
		xSpd -= xAcelleration;		
		
		//move_and_collide(xSpd,0,[my_tilemap,Door])
		
	}
		if(keyboard_check_released(ord("A")))
	{
		image_speed = 0;
		image_index = 1;
	}
	if(!keyboard_check(ord("A")) &&! keyboard_check(ord("D")))
	{
	 xSpd *= 0.6
	}
}
#endregion

#region Jump

	//show_debug_message(ySpd)
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
	
	if (jumping && jumpTimer >= 0 || sliding)
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
	
	if (falling && sliding && !jumping)
	{
		ySpd = slide_grav;
	}

	else if (falling && !sliding)
	{
		grav = 0.5;
	}

	if (ySpd >= Max_Yspd && !sliding) {ySpd = Max_Yspd}
	
	if (jumping || falling) {sprite_index = sprite_player_jump}
	else {sprite_index = sprite_player_walk_side}
	
#endregion

	if (wallJumping && wallJumpTimer >= 0 )
	{
	
		ySpd = jumpSpd;
		xJumpSpd += 1;
		if (xJumpSpd >= 5) {xJumpSpd = 5}
		move_and_collide(xJumpSpd,0,[my_tilemap,Door])
		grounded = false;
		wallJumpTimer --;
		show_debug_message("fart")
	}
	else {xJumpSpd = 0;}
	
		if (keyboard_check_released(vk_space) || wallJumpTimer <= 0)
	{
	
	wallJumping = false;
	//falling = true;
	}
	
	
var totalspd = xJumpSpd 