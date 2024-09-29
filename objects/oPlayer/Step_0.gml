ysp=+8
xsp=0


if keyboard_check(vk_left)
{
	xsp=-15
}

if keyboard_check(vk_right)
{
	xsp=+15
}
if place_meeting(x,y+1,oSolid)
{
	ysp=0
	if keyboard_check(vk_space)
	{
		ysp=-200	
	}
}

move_and_collide(xsp,ysp,oSolid)

//collisions

if place_meeting(x,y,oFlag)
{
	room_goto_next()
}

if place_meeting(x,y,oSpike)
{
	room_restart()
}