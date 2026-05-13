startX = x;
startY = y;
nowalljumpsound = true;
nowalljumpsoundRight = true;

audio_play_sound(Main_Level_Sound,1,1);


// Booleans
key = false;
KeyFound = false;
grounded = false;
falling = true;
jumping = false;
wallJumping = false;
wallJumpingRight = false;
near_Door = true;
fatty = true;
sliding = false;
slidingRight = false;
nomoving = false;
walljumpclear = false;

// Strings
current_message = "";
my_tilemap = layer_tilemap_get_id("Tiles_1");

// Ints
XTotalSpeed = 0;

xSpd = 5;
xAcelleration = 0.5;
ySpd = 2;
money = 0;
grav = 1;
slide_grav = 3;
Max_Yspd = 7;
Max_Xspd = 5;

jumpHoldFrames = 30;
jumpTimer = 0;

wallJumpHoldFrames = 30;
wallJumpTimer = 0;
wallJumpDir = 0;

wallJumpRightHoldFrames = 30;
wallJumpRightTimer = 0;
	
jumpSpd = -5;
xJumpSpd = 0;





//my_color = col(
