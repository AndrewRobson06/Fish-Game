function display_fish(_messages){
    if (instance_exists(obj_display_fish)) return;
        
    var _inst = instance_create_layer(0, 0, 0, obj_display_fish)
    _inst.messages = _messages;
    _inst.current_message = 0;
}