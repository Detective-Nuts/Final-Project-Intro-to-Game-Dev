draw_set_font(Font1);
draw_set_colour(make_colour_rgb(0,0,0));

		if(instance_exists(Dialogue))
		{
			if(current_message == "NPC1" && !KeyFound)
			{
				draw_text_ext(Dialogue.x+200,Dialogue.y+5,"My Brother Only lets people through when he's not hungry",50, 440);
			}
			if(current_message == "NPC1" &&  KeyFound)
			{
				draw_text_ext(Dialogue.x+200,Dialogue.y+5,"You Couldn't have got him a salad?",50, 440);
			}
			if(current_message == "NPC2")
			{
				draw_text_ext(Dialogue.x+200,Dialogue.y+5,"The exit's not down here! Try walljumping!",50, 440);
			}
				if(current_message == "NPC3")
			{
				draw_text_ext(Dialogue.x+200,Dialogue.y+5,"I'm So Hungry",50, 440);
			}
				if(current_message == "NPC4")
			{
				draw_text_ext(Dialogue.x+200,Dialogue.y+5,"Thanks a Bunch!",50, 440);
			}
				if(current_message == "NPC5")
			{
				draw_text_ext(Dialogue.x+200,Dialogue.y+5,"Could you bring a rope down here too I need to go to the bathroom....",50, 440);
			}
				if(current_message == "NPC6")
			{
				draw_text_ext(Dialogue.x+200,Dialogue.y+5,"The Exit's right past here!",50, 440);
			}
			
			
		}

draw_self();