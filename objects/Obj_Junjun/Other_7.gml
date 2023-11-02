
if (State == playerstate.Attack)
{
	image_speed = 0;
	image_index = image_number - 1;
	
	if (image_index >= image_number - 1)
	{
        State = playerstate.Move;
		attackCooldown = false;
    }
}

