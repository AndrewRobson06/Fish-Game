if (instance_exists(obj_player) && distance_to_object(obj_player) < 1){
    global.can_enter = true
    if (keyboard_check_pressed(ord("E"))){
        global.moveToShop = true;
		
    }
else {
   global.can_enter = false
}
}