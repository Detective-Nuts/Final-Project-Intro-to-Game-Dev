if (Player.xSpd < 0) 
{
	x = lerp(x, Player.x - 100, 0.1)	
}

if (Player.xSpd > 0) 
{
	x = lerp(x, Player.x + 100, 0.1)	
}

