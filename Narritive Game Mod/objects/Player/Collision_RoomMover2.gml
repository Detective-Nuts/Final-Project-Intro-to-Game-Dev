audio_stop_sound(Main_Level_Sound);
audio_play_sound(Finish_Sound, 1 , false);
room_restart();
draw_set_colour(make_colour_rgb(255,255,255));
room_goto(End);

