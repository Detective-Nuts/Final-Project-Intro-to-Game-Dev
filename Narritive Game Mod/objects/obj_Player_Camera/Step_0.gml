if (Player.xSpd < 0) 
{
	x = lerp(x, Player.x - 100, 0.1)	
}

if (Player.xSpd > 0) 
{
	x = lerp(x, Player.x + 100, 0.1)	
}

if (Player.ySpd < 0) 
{
	y = lerp(y, Player.y - 20, 0.1)	
}
if (Player.ySpd > 0) 
{
	y = lerp(y, Player.y + 20, 0.1)	
}
else if (Player.ySpd = 0)
{
	y = lerp(y, Player.y, 0.1)	
}