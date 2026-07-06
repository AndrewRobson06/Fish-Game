if (instance_exists(obj_player) && distance_to_object(obj_player) < 1)
    global.can_enter = true
	
else  {
   global.can_enter = false
}

if global.can_enter = true && keyboard_check(ord("E")){
	FadeToRoom(rm_shop, 25, c_black)
}
	
