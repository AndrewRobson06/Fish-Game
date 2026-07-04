/// @arg room
/// @arg duration
/// @arg color
	
function FadeToRoom(_room, _dur, _color){

	//create
	var _inst = instance_create_depth(0, 0, 0, obj_room_transition);

	//set properties
	with (_inst) {
		targetRoom = _room;
		duration = _dur;
		color = _color;
	}
}