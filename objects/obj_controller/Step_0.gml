
//change room to shop
if (keyboard_check_pressed(vk_backspace) && !instance_exists(obj_room_transition)){
	
	//target room
	var _targetRoom = rm_shop;
	
	if (room == rm_shop) _targetRoom = Room1
	
	FadeToRoom(_targetRoom, 25, c_black);
	
	global.moveToShop = false;
}