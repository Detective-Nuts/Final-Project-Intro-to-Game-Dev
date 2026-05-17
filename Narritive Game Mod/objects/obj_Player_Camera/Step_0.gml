if (Player.XTotalSpeed < -6) 
{
	x = lerp(x, Player.x - 100, 0.1)	
}

if (Player.XTotalSpeed > 6) 
{
	x = lerp(x, Player.x + 100, 0.1)	
}
else
{
	x = lerp(x, Player.x,0.1);
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
